defmodule Phodash.BoardTest do
  use Phodash.DataCase

  alias Phodash.Board

  describe "categories" do
    alias Phodash.Board.Category

    import Phodash.BoardFixtures

    @invalid_attrs %{description: nil, position: nil, title: nil}

    test "list_categories/0 returns all categories" do
      category = category_fixture()
      assert Board.list_categories() == [category]
    end

    test "get_category!/1 returns the category with given id" do
      category = category_fixture()
      assert Board.get_category!(category.id) == category
    end

    test "create_category/1 with valid data creates a category" do
      valid_attrs = %{description: "some description", position: 42, title: "some title"}

      assert {:ok, %Category{} = category} = Board.create_category(valid_attrs)
      assert category.description == "some description"
      assert category.position == 42
      assert category.title == "some title"
    end

    test "create_category/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Board.create_category(@invalid_attrs)
    end

    test "update_category/2 with valid data updates the category" do
      category = category_fixture()
      update_attrs = %{description: "some updated description", position: 43, title: "some updated title"}

      assert {:ok, %Category{} = category} = Board.update_category(category, update_attrs)
      assert category.description == "some updated description"
      assert category.position == 43
      assert category.title == "some updated title"
    end

    test "update_category/2 with invalid data returns error changeset" do
      category = category_fixture()
      assert {:error, %Ecto.Changeset{}} = Board.update_category(category, @invalid_attrs)
      assert category == Board.get_category!(category.id)
    end

    test "delete_category/1 deletes the category" do
      category = category_fixture()
      assert {:ok, %Category{}} = Board.delete_category(category)
      assert_raise Ecto.NoResultsError, fn -> Board.get_category!(category.id) end
    end

    test "change_category/1 returns a category changeset" do
      category = category_fixture()
      assert %Ecto.Changeset{} = Board.change_category(category)
    end
  end

  describe "items" do
    alias Phodash.Board.Item

    import Phodash.BoardFixtures

    @invalid_attrs %{description: nil, position: nil, title: nil, url: nil}

    test "list_items/0 returns all items" do
      item = item_fixture()
      assert Board.list_items() == [item]
    end

    test "get_item!/1 returns the item with given id" do
      item = item_fixture()
      assert Board.get_item!(item.id) == item
    end

    test "create_item/1 with valid data creates a item" do
      valid_attrs = %{description: "some description", position: 42, title: "some title", url: "some url"}

      assert {:ok, %Item{} = item} = Board.create_item(valid_attrs)
      assert item.description == "some description"
      assert item.position == 42
      assert item.title == "some title"
      assert item.url == "some url"
    end

    test "create_item/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Board.create_item(@invalid_attrs)
    end

    test "update_item/2 with valid data updates the item" do
      item = item_fixture()
      update_attrs = %{description: "some updated description", position: 43, title: "some updated title", url: "some updated url"}

      assert {:ok, %Item{} = item} = Board.update_item(item, update_attrs)
      assert item.description == "some updated description"
      assert item.position == 43
      assert item.title == "some updated title"
      assert item.url == "some updated url"
    end

    test "update_item/2 with invalid data returns error changeset" do
      item = item_fixture()
      assert {:error, %Ecto.Changeset{}} = Board.update_item(item, @invalid_attrs)
      assert item == Board.get_item!(item.id)
    end

    test "delete_item/1 deletes the item" do
      item = item_fixture()
      assert {:ok, %Item{}} = Board.delete_item(item)
      assert_raise Ecto.NoResultsError, fn -> Board.get_item!(item.id) end
    end

    test "change_item/1 returns a item changeset" do
      item = item_fixture()
      assert %Ecto.Changeset{} = Board.change_item(item)
    end
  end
end
