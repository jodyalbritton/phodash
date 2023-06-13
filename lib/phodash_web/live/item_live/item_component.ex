defmodule PhodashWeb.ItemComponent do
  use PhodashWeb, :live_component

  alias Phodash.{Board, Events}


  def render(assigns) do
    ~H"""
      <div>
        <div
          id={"items-#{@category_id}"}
          phx-update="stream"
          phx-hook="Sortable"
          class="grid sm:grid-cols-1 md:grid-cols-2 xl:grid-cols-4 gap-3"
          data-group="items"
          data-category_id={@category_id}
        >
        <div
          :for={{id, item} <- @streams.items}
          id={id}
          data-id={item.id}
          data-category_id={item.category_id}
          class="indicator w-full">
          <span class="indicator-item indicator-top indicator-end badge bg-green-500" />
          <div class="card card-side bg-base-100 shadow-xl w-full">
            <figure class="pl-5 mt-10"><img class="w-14" src={"/images/logos/#{item.provider.thumbnail}"} alt="Album"/></figure>
            <div class="card-body">
              <div class="card-actions justify-end">
                <.link patch={"/categories/#{item.category_id}/items/#{item.id}/edit"} >
                    <button class="btn btn-square btn-sm">
                      <.icon name="hero-pencil-square" />
                    </button>
                  </.link>
                  <button class="btn btn-square btn-sm"  phx-click={JS.push("delete", value: %{id: item.id}) |> hide("##{id}")} phx-target={@myself} data-confirm="Are you sure?">
                  <.icon name="hero-x-mark" />
                  </button>
              </div>
                <div class="flex">
                    <div class="flex-none">
                      <.link href={item.url} >
                        <h3 class="card-title"><%= item.title %></h3>
                      </.link>
                      <%= item.description %>
                    </div>
                    <div class="info-panel flex-auto">

                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    """
  end




  def update(%{category: category} = assigns, socket) do
    items =  category.items |> Phodash.Repo.preload([:provider])
    {:ok,
     socket
     |> assign(category_id: category.id, scope: assigns.scope)
     |> stream(:items, items)}
  end

  def update(%{event: %Events.ItemRepositioned{item: item,}}, socket) do
    {:ok, stream_insert(socket, :items, item, at: item.position)}
  end

  def update(%{event: %Events.ItemAdded{item: item}}, socket) do
    {:ok, stream_insert(socket, :items, item)}
  end

  def update(%{event: %Events.ItemUpdated{item: item}}, socket) do
    {:ok, stream_insert(socket, :items, item)}
  end

  def update(%{event: %Events.ItemDeleted{item: item}}, socket) do
    {:ok, stream_delete(socket, :items, item)}
  end

  def handle_info({Phodash.Board, %Events.ItemRepositioned{item: item}}, socket) do
    {:noreply,
     socket
     |> stream_insert(:items, item, at: item.position)}
  end


  def handle_event("delete", %{"id" => id}, socket) do
    item = Board.get_item!(socket.assigns.scope, id)
    {:ok, _} = Board.delete_item(socket.assigns.scope, item)

    {:noreply, socket}
  end

  def handle_event("reposition", %{"id" => id, "new" => new_idx, "old" => _} = params, socket) do
    case params do
      %{"category_id" => old_category_id, "to" => %{"category_id" => old_category_id}} ->
        item = Board.get_item!(socket.assigns.scope, id)
        Board.update_item_position(socket.assigns.scope, item, new_idx)
        {:noreply, socket}

      %{"category_id" => _old_category_id, "to" => %{"category_id" => new_category_id}} ->
        item = Board.get_item!(socket.assigns.scope, id)
        category = Board.get_category!(socket.assigns.scope, new_category_id)
        Board.move_item_to_category(socket.assigns.scope, item, category, new_idx)
        {:noreply, socket}
    end
  end


end
