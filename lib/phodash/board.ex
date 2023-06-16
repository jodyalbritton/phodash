defmodule Phodash.Board do
  @moduledoc """
  The Board context.
  """

  import Ecto.Query, warn: false
  alias Phodash.{Repo, Scope, Events}

  alias Phodash.Board.Category
  alias Phodash.Board.Item

  @max_items 1000


  @doc """
  Subscribers the given scope to the todo pubsub.

  For logged in users, this will be a topic scoped only to the logged in user.
  If the system is extended to allow shared lists, the topic subscription could
  be derived for a particular organizatoin or team, particlar list, and so on.
  """
  def subscribe(%Scope{} = scope) do
    Phoenix.PubSub.subscribe(Phodash.PubSub, topic(scope))
  end


  @doc """
  Reorders a category in the current users dashboard.

  Broadcasts `%Events.CategoryRepositioned{}` on the scoped topic when successful.
  """
  def update_category_position(%Scope{} = scope, %Category{} = category, new_index) do
    Ecto.Multi.new()
    |> multi_reposition(:new, category, category, new_index, user_id: scope.current_user.id)
    |> Repo.transaction()
    |> case do
      {:ok, _} ->
        new_category = %Category{category | position: new_index}


        broadcast(scope, %Events.CategoryRepositioned{category: new_category})

        :ok

      {:error, _failed_op, failed_val, _changes_so_far} ->
        {:error, failed_val}
    end
  end


  @doc """
  Reorders a category in the current users dashboard.

  Broadcasts `%Events.CategoryRepositioned{}` on the scoped topic when successful.
  """
  def update_item_position(%Scope{} = scope, %Item{} = item, new_index) do
    Ecto.Multi.new()
    |> multi_reposition(:new, item, item, new_index, user_id: scope.current_user.id)
    |> Repo.transaction()
    |> case do
      {:ok, _} ->
        new_item = %Item{item | position: new_index}


        broadcast(scope, %Events.ItemRepositioned{item: new_item})

        :ok

      {:error, _failed_op, failed_val, _changes_so_far} ->
        {:error, failed_val}
    end
  end



  @doc """
  Returns the list of categories.

  ## Examples

      iex> list_categories()
      [%Category{}, ...]

  """
  def list_categories do
    Repo.all(Category)
  end


  @doc """
  Returns the active categories for the current scope.
  """
  def active_categories(%Scope{} = scope, limit) do
    from(l in Category,
      where: l.user_id == ^scope.current_user.id,
      limit: ^limit,
      order_by: [asc: :position]
    )
    |> Repo.all()
    |> Repo.preload(
       items:
        from(i in Item,
          where: i.user_id == ^scope.current_user.id,
          limit: @max_items,
          order_by: [asc: i.position],
          preload: [:provider]
        )
    )
  end

  @doc """
  Gets a single category.

  Raises `Ecto.NoResultsError` if the Category does not exist.

  ## Examples

      iex> get_category!(123)
      %Category{}

      iex> get_category!(456)
      ** (Ecto.NoResultsError)

  """
  def get_category!(%Scope{} = scope, id) do
    from(c in Category, where: c.user_id == ^scope.current_user.id, where: c.id == ^id)
    |> Repo.one!()
    |> preload()
  end


  defp preload(resource), do: Repo.preload(resource, [items: :provider])

  @doc """
  Creates a category.

  ## Examples

      iex> create_category(%{field: value})
      {:ok, %Category{}}

      iex> create_category(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_category(%Scope{} = scope, attrs \\ %{}) do
    Ecto.Multi.new()
    |> Ecto.Multi.run(:position, fn repo, _changes ->
      position =
        repo.one(from c in Category, where: c.user_id == ^scope.current_user.id, select: count(c.id))

      {:ok, position}
    end)
    |> Ecto.Multi.insert(:category, fn %{position: position} ->
      Category.changeset(%Category{user_id: scope.current_user.id, position: position}, attrs)
    end)
    |> Repo.transaction()
    |> case do
      {:ok, %{category: category}} ->
        category = Repo.preload(category, :items)

        # log =
        #   ActivityLog.log(scope, list, %{
        #     action: "list_created",
        #     subject_text: list.title
        #   })

        broadcast(scope, %Events.CategoryAdded{category: category})

        {:ok, category}

      {:error, _failed_op, failed_val, _changes_so_far} ->
        {:error, failed_val}
    end
  end

  @doc """
  Updates a category.

  ## Examples

      iex> update_category(category, %{field: new_value})
      {:ok, %Category{}}

      iex> update_category(category, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_category(%Scope{} = scope, %Category{} = category, attrs) do
    category
    |> Category.changeset(attrs)
    |> Repo.update()
    |> case do
      {:ok, new_category} ->


        broadcast(scope, %Events.CategoryUpdated{category: new_category})

        {:ok, new_category}

      other ->
        other
    end
  end

  @doc """
  Deletes a category.

  Broadcasts %Events.CategoryDeleted{} on the scoped topic when successful.
  """
  def delete_category(%Scope{} = scope, %Category{} = category) do
    Ecto.Multi.new()
    |> multi_decrement_positions(:dec_rest_in_parent, category, user_id: category.user_id)
    |> Ecto.Multi.delete(:category, category)
    |> Repo.transaction()
    |> case do
      {:ok, %{category: category}} ->

        broadcast(scope, %Events.CategoryDeleted{category: category})

        {:ok, category}

      {:error, _failed_op, failed_val, _changes_so_far} ->
        {:error, failed_val}
    end
  end


  @doc """
  Returns an `%Ecto.Changeset{}` for tracking category changes.

  ## Examples

      iex> change_category(category)
      %Ecto.Changeset{data: %Category{}}

  """
  def change_category(%Category{} = category, attrs \\ %{}) do
    Category.changeset(category, attrs)
  end



  @doc """
  Returns the list of items.

  ## Examples

      iex> list_items()
      [%Item{}, ...]

  """
  def list_items do
    Repo.all(Item) |> Repo.preload([:user, :provider])
  end

  @doc """
  Gets a single item.

  Raises `Ecto.NoResultsError` if the Item does not exist.

  ## Examples

      iex> get_item!(123)
      %Item{}

      iex> get_item!(456)
      ** (Ecto.NoResultsError)

  """
  def get_item!(%Scope{} = scope, id) do
    from(i in Item, where: i.user_id == ^scope.current_user.id, where: i.id == ^id)
    |> Repo.one!()
    |> Repo.preload([:category, :provider])
  end

  @doc """
  Creates a item.

  ## Examples

      iex> create_item(%{field: value})
      {:ok, %Item{}}

      iex> create_item(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_item(%Scope{} = scope, %Category{} = category, params) do
    item = %Item{
      user_id: scope.current_user.id,
      category_id: category.id
    }

    Ecto.Multi.new()
    |> Ecto.Multi.run(:position, fn repo, _changes ->
      position = repo.one(from i in Item, where: i.category_id == ^category.id, select: count(i.id))

      {:ok, position}
    end)
    |> Ecto.Multi.insert(:item, fn %{position: position} ->
      Item.changeset(%Item{item | position: position}, params)
    end)
    |> Repo.transaction()
    |> case do
      {:ok, %{item: item}} ->

        broadcast(scope, %Events.ItemAdded{item: item |> Repo.preload(:provider)})
        Phodash.Workers.ScheduleWorker.perform(%{args: %{"user_id" => scope.current_user.id, "item_id" => item.id, "url" => item.url}, attempt: 1})

        {:ok, item}

      {:error, :item, changeset, _changes_so_far} ->
        {:error, changeset}
    end
  end

  @doc """
  Updates a item.

  ## Examples

      iex> update_item(item, %{field: new_value})
      {:ok, %Item{}}

      iex> update_item(item, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_item(%Scope{} = scope, %Item{} = item, attrs) do
    item
    |> Item.changeset(attrs)
    |> Repo.update()
    |> case do
      {:ok, new_item} ->

        broadcast(scope, %Events.ItemUpdated{item: new_item})

        {:ok, new_item}

      other ->
        other
    end
  end

  @doc """
  Deletes a item.

  ## Examples

      iex> delete_item(item)
      {:ok, %Item{}}

      iex> delete_item(item)
      {:error, %Ecto.Changeset{}}

  """
 def delete_item(%Scope{} = scope, %Item{} = item) do
    Ecto.Multi.new()
    |> multi_decrement_positions(:dec_rest_in_list, item, category_id: item.category_id)
    |> Ecto.Multi.delete(:item, item)
    |> Repo.transaction()
    |> case do
      {:ok, %{item: item}} ->


        broadcast(scope, %Events.ItemDeleted{item: item})

        {:ok, item}

      {:error, _failed_op, failed_val, _changes_so_far} ->
        {:error, failed_val}
      end
  end
  @doc """
  Returns an `%Ecto.Changeset{}` for tracking item changes.

  ## Examples

      iex> change_item(item)
      %Ecto.Changeset{data: %Item{}}

  """
  def change_item(%Item{} = item, attrs \\ %{}) do
    Item.changeset(item, attrs)
  end


  @doc """
  Moves an item from one category to another.

  Broadcasts %Events.ItemDeleted{} on the scoped topic for the old list.
  Broadcasts %Events.ItemRepositioned{} on the scoped topic for the new list.
  """
  def move_item_to_category(%Scope{} = scope, %Item{} = item, %Category{} = category, at_index) do
    Ecto.Multi.new()
    |> multi_update_all(:dec_positions, fn _ ->
      from(i in Item,
        where: i.category_id == ^item.category_id,
        where:
          i.position > subquery(from og in Item, where: og.id == ^item.id, select: og.position),
        update: [inc: [position: -1]]
      )
    end)
    |> Ecto.Multi.run(:pos_at_end, fn repo, _changes ->
      position = repo.one(from i in Item, where: i.category_id == ^category.id, select: count(i.id))
      {:ok, position}
    end)
    |> multi_update_all(:move_to_category, fn %{pos_at_end: pos_at_end} ->
      from(i in Item,
        where: i.id == ^item.id,
        update: [set: [category_id: ^category.id, position: ^pos_at_end]]
      )
    end)
    |> multi_reposition(:new, item, category, at_index, category_id: category.id)
    |> Repo.transaction()
    |> case do
      {:ok, _} ->
        new_item = %Item{item | category: category, category_id: category.id, position: at_index}



        broadcast(scope, %Events.ItemDeleted{item: item})
        broadcast(scope, %Events.ItemRepositioned{item: new_item})

        :ok

      {:error, _failed_op, failed_val, _changes_so_far} ->
        {:error, failed_val}
    end
  end

  def check_items_up() do
    items = list_items()

    for item <- items do
      user = item.user
      scope = Phodash.Scope.for_user(user)
      req = Req.new(base_url: item.url)

      status=
      case Req.get(req, url: "/") do
        {:ok, res} ->
          case res.status do
            200 -> :up
            _-> :down
          end
        {:error, _res} ->
          :down
      end

      update_item(scope, item, %{status: status})
    end
    :ok
  end

  def check_item_up(user_id, item_id, url) do
    user = Phodash.Accounts.get_user!(user_id)
    scope = Phodash.Scope.for_user(user)
    item = Phodash.Board.get_item!(scope, item_id)
    req = Req.new(base_url: url)

      status=
      case Req.get(req, url: "/") do
        {:ok, res} ->
          case res.status do
            200 -> :up
            _-> :down
          end
        {:error, _res} ->
          :down
      end

      update_item(scope, item, %{status: status})
  end


  defp broadcast(%Scope{} = scope, event) do
    Phoenix.PubSub.broadcast(Phodash.PubSub, topic(scope), {__MODULE__, event})
  end

  defp topic(%Scope{} = scope), do: "items:#{scope.current_user.id}"

  defp multi_reposition(%Ecto.Multi{} = multi, name, %type{} = struct, _lock, new_idx, where_query)
      when is_integer(new_idx) do
    old_position = from(og in type, where: og.id == ^struct.id, select: og.position)

    multi
    |> Ecto.Multi.run({:index, name}, fn repo, _changes ->
      case repo.one(from(t in type, where: ^where_query, select: count(t.id))) do
        count when new_idx < count -> {:ok, new_idx}
        count -> {:ok, count - 1}
      end
    end)
    |> multi_update_all({:dec_positions, name}, fn %{{:index, ^name} => computed_index} ->
      from(t in type,
        where: ^where_query,
        where: t.id != ^struct.id,
        where: t.position > subquery(old_position) and t.position <= ^computed_index,
        update: [inc: [position: -1]]
      )
    end)
    |> multi_update_all({:inc_positions, name}, fn %{{:index, ^name} => computed_index} ->
      from(t in type,
        where: ^where_query,
        where: t.id != ^struct.id,
        where: t.position < subquery(old_position) and t.position >= ^computed_index,
        update: [inc: [position: 1]]
      )
    end)
    |> multi_update_all({:position, name}, fn %{{:index, ^name} => computed_index} ->
      from(t in type,
        where: t.id == ^struct.id,
        update: [set: [position: ^computed_index]]
      )
    end)
    end

  defp multi_decrement_positions(%Ecto.Multi{} = multi, name, %type{} = struct, where_query) do
    multi_update_all(multi, name, fn _ ->
      from(t in type,
        where: ^where_query,
        where:
          t.position > subquery(from og in type, where: og.id == ^struct.id, select: og.position),
        update: [inc: [position: -1]]
      )
    end)
  end



  defp multi_update_all(multi, name, func, opts \\ []) do
    Ecto.Multi.update_all(multi, name, func, opts)
  end






end
