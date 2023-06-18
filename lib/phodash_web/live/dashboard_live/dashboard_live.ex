defmodule PhodashWeb.DashboardLive do
  use PhodashWeb, :live_view
  alias Phodash.Events
  alias Phodash.Board
  alias Phoenix.LiveView.JS

  @impl true
  def mount(_params, _session, socket) do
    if connected?(socket) do
      Board.subscribe(socket.assigns.scope)
    end

    providers = Phodash.Services.list_providers_for_select()
    categories = Board.active_categories(socket.assigns.scope, 20)
    {:ok,
      socket
        |> assign(:editing, false)
        |> assign(:providers, providers)
        |> stream(:categories, categories)
    }
  end

  @impl true
  def handle_params(params, _uri, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  @impl true
  def handle_info({Board, %Events.CategoryUpdated{category: category}}, socket) do
    {:noreply,
     socket
     |> stream_insert(:categories, category)}
  end


  def handle_info({Board, %_event{item: item} = event}, socket) do
    send_update(PhodashWeb.ItemComponent, id: item.category_id, event: event)
    {:noreply, socket}
  end

  def handle_info({Phodash.Board, %Events.CategoryRepositioned{category: category}}, socket) do
    {:noreply,
     socket
     |> stream_insert(:categories, category, at: category.position)}
  end

  def handle_info({Phodash.Board, %Events.CategoryAdded{category: category}}, socket) do
    {:noreply,
     socket
     |> stream_insert(:categories, category)}
  end

  def handle_info({Phodash.Board, %Events.CategoryDeleted{category: category}}, socket) do
    {:noreply,
     socket
     |> stream_delete(:categories, category)}
  end

  @impl true
  def handle_event("reposition", %{"id" => id, "new" => new_idx, "old" => _old_idx}, socket) do
    category = Board.get_category!(socket.assigns.scope, id)
    Board.update_category_position(socket.assigns.scope, category, new_idx)
    {:noreply, socket}
  end

  def handle_event("delete-category", %{"id" => id}, socket) do
    category = Board.get_category!(socket.assigns.scope, id)
    Board.delete_category(socket.assigns.scope, category)
    {:noreply, socket}
  end

  def handle_event("editing", _params, socket) do

    IO.puts("edit event")
    {:noreply,
    socket
      |> assign(:editing, !socket.assigns.editing)}



  end

  defp apply_action(socket, :dashboard, _params) do
    socket
    |> assign(:page_title, "Dashboard")
    |> assign(:category, nil)
  end

  defp apply_action(socket, :new_category, _params) do
    socket
    |> assign(:page_title, "New Category")
    |> assign(:category, %Board.Category{})
  end

  defp apply_action(socket, :edit_category, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Category")
    |> assign(:category, Board.get_category!(socket.assigns.scope, id))
  end


  defp apply_action(socket, :new_item, %{"category_id" => category_id}) do
    socket
    |> assign(:page_title, "New Item")
    |> assign(:category, Board.get_category!(socket.assigns.scope, category_id))
    |> assign(:item, %Board.Item{})
  end

  defp apply_action(socket, :edit_item, %{"category_id" => _category_id, "id" => id}) do
    socket
    |> assign(:page_title, "Edit Item")
    |> assign(:item, Board.get_item!(socket.assigns.scope, id))
  end

  def show_edit(js \\ %JS{}, selector) do
    js
    |> JS.push("editing")
    |> JS.show(to: selector, transition: "fade-in")
  end

  def hide_edit(js \\ %JS{}, selector) do
    js
    |> JS.push("editing")
    |> JS.hide(to: selector, transition: "fade-out")
  end
end
