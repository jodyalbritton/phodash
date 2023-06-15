defmodule PhodashWeb.ProviderLive.FormComponent do
  use PhodashWeb, :live_component

  alias Phodash.Services

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <.header>
        <%= @title %>
        <:subtitle>Use this form to manage provider records in your database.</:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="provider-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        <section class="max-w-xl" phx-drop-target={@uploads.thumbnail.ref}>

          <%!-- render each thumbnail entry --%>
          <%= for entry <- @uploads.thumbnail.entries do %>
            <article class="upload-entry">

              <figure>
                <.live_img_preview entry={entry} />
                <figcaption><%= entry.client_name %></figcaption>
              </figure>

              <%!-- entry.progress will update automatically for in-flight entries --%>
              <progress value={entry.progress} max="100"> <%= entry.progress %>% </progress>

              <%!-- a regular click event whose handler will invoke Phoenix.LiveView.cancel_upload/3 --%>
              <button type="button" phx-click="cancel-upload" phx-value-ref={entry.ref} aria-label="cancel">&times;</button>

              <%!-- Phoenix.Component.upload_errors/2 returns a list of error atoms --%>
              <%= for err <- upload_errors(@uploads.thumbnail, entry) do %>
                <p class="alert alert-danger"><%= error_to_string(err) %></p>
              <% end %>

            </article>
          <% end %>

          <%!-- Phoenix.Component.upload_errors/1 returns a list of error atoms --%>
          <%= for err <- upload_errors(@uploads.thumbnail) do %>
            <p class="alert alert-danger"><%= error_to_string(err) %></p>
          <% end %>

        </section>
        <.live_file_input upload={@uploads.thumbnail} />
        <.input field={@form[:name]} type="text" label="Name" />
        <.input field={@form[:thumbnail]} type="text" label="Thumbnail" />
        <:actions>
          <.button phx-disable-with="Saving...">Save Provider</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(%{provider: provider} = assigns, socket) do
    changeset = Services.change_provider(provider)

    {:ok,
     socket
     |> assign(assigns)
     |> assign(:uploaded_files, [])
     |> allow_upload(:thumbnail, accept: ~w(.png), max_entries: 1)
     |> assign_form(changeset)}
  end

  @impl true
  def handle_event("validate", %{"provider" => provider_params}, socket) do
    changeset =
      socket.assigns.provider
      |> Services.change_provider(provider_params)
      |> Map.put(:action, :validate)

    {:noreply, assign_form(socket, changeset)}
  end

  def handle_event("cancel-upload", %{"ref" => ref}, socket) do
    {:noreply, cancel_upload(socket, :thumbnail, ref)}
  end

  def handle_event("save", %{"provider" => provider_params}, socket) do
    IO.inspect(provider_params)
    case uploaded_entries(socket, :thumbnail) do
      {[_|_] = entries, []} ->
        uploaded_files = for entry <- entries do
          consume_uploaded_entry(socket, entry, fn %{path: path} ->
            dest = Path.join("priv/static/images/logos/png/", Path.basename(path))
            File.cp!(path, dest<>".png")
            {:ok, Path.basename(dest<>".png")}
          end)
        end
        new_prov=
        %{
          "name" => provider_params["name"],
          "thumbnail" =>  "png/#{Path.basename(List.first(uploaded_files))}"
        }
        IO.inspect(new_prov)
        {:noreply, update(socket, :uploaded_files, &(&1 ++ uploaded_files))}
        save_provider(socket, socket.assigns.action, new_prov)

      _ ->
        {:noreply, socket}
    end

  end

  defp save_provider(socket, :edit, provider_params) do
    case Services.update_provider(socket.assigns.provider, provider_params) do
      {:ok, provider} ->
        notify_parent({:saved, provider})

        {:noreply,
         socket
         |> put_flash(:info, "Provider updated successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end
  end

  defp save_provider(socket, :new, provider_params) do
    case Services.create_provider(provider_params) do
      {:ok, provider} ->
        notify_parent({:saved, provider})

        {:noreply,
         socket
         |> put_flash(:info, "Provider created successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    assign(socket, :form, to_form(changeset))
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})

  defp error_to_string(:too_large), do: "Too large"
  defp error_to_string(:too_many_files), do: "You have selected too many files"
  defp error_to_string(:not_accepted), do: "You have selected an unacceptable file type"
end
