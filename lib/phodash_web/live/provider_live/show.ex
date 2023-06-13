defmodule PhodashWeb.ProviderLive.Show do
  use PhodashWeb, :live_view

  alias Phodash.Services

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:provider, Services.get_provider!(id))}
  end

  defp page_title(:show), do: "Show Provider"
  defp page_title(:edit), do: "Edit Provider"
end
