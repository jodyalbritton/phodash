defmodule PhodashWeb.ProviderLive.Index do
  use PhodashWeb, :live_view

  alias Phodash.Services
  alias Phodash.Services.Provider

  @impl true
  def mount(_params, _session, socket) do
    {:ok, stream(socket, :providers, Services.list_providers())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Provider")
    |> assign(:provider, Services.get_provider!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Provider")
    |> assign(:provider, %Provider{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Providers")
    |> assign(:provider, nil)
  end

  @impl true
  def handle_info({PhodashWeb.ProviderLive.FormComponent, {:saved, provider}}, socket) do
    {:noreply, stream_insert(socket, :providers, provider)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    provider = Services.get_provider!(id)
    {:ok, _} = Services.delete_provider(provider)

    {:noreply, stream_delete(socket, :providers, provider)}
  end
end
