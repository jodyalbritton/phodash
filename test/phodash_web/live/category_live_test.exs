defmodule PhodashWeb.CategoryLiveTest do
  use PhodashWeb.ConnCase

  import Phoenix.LiveViewTest
  import Phodash.BoardFixtures

  @create_attrs %{description: "some description", position: 42, title: "some title"}
  @update_attrs %{description: "some updated description", position: 43, title: "some updated title"}
  @invalid_attrs %{description: nil, position: nil, title: nil}

  defp create_category(_) do
    category = category_fixture()
    %{category: category}
  end

  describe "Index" do
    setup [:create_category]

    test "lists all categories", %{conn: conn, category: category} do
      {:ok, _index_live, html} = live(conn, ~p"/categories")

      assert html =~ "Listing Categories"
      assert html =~ category.description
    end

    test "saves new category", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, ~p"/categories")

      assert index_live |> element("a", "New Category") |> render_click() =~
               "New Category"

      assert_patch(index_live, ~p"/categories/new")

      assert index_live
             |> form("#category-form", category: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#category-form", category: @create_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/categories")

      html = render(index_live)
      assert html =~ "Category created successfully"
      assert html =~ "some description"
    end

    test "updates category in listing", %{conn: conn, category: category} do
      {:ok, index_live, _html} = live(conn, ~p"/categories")

      assert index_live |> element("#categories-#{category.id} a", "Edit") |> render_click() =~
               "Edit Category"

      assert_patch(index_live, ~p"/categories/#{category}/edit")

      assert index_live
             |> form("#category-form", category: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#category-form", category: @update_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/categories")

      html = render(index_live)
      assert html =~ "Category updated successfully"
      assert html =~ "some updated description"
    end

    test "deletes category in listing", %{conn: conn, category: category} do
      {:ok, index_live, _html} = live(conn, ~p"/categories")

      assert index_live |> element("#categories-#{category.id} a", "Delete") |> render_click()
      refute has_element?(index_live, "#categories-#{category.id}")
    end
  end

  describe "Show" do
    setup [:create_category]

    test "displays category", %{conn: conn, category: category} do
      {:ok, _show_live, html} = live(conn, ~p"/categories/#{category}")

      assert html =~ "Show Category"
      assert html =~ category.description
    end

    test "updates category within modal", %{conn: conn, category: category} do
      {:ok, show_live, _html} = live(conn, ~p"/categories/#{category}")

      assert show_live |> element("a", "Edit") |> render_click() =~
               "Edit Category"

      assert_patch(show_live, ~p"/categories/#{category}/show/edit")

      assert show_live
             |> form("#category-form", category: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert show_live
             |> form("#category-form", category: @update_attrs)
             |> render_submit()

      assert_patch(show_live, ~p"/categories/#{category}")

      html = render(show_live)
      assert html =~ "Category updated successfully"
      assert html =~ "some updated description"
    end
  end
end
