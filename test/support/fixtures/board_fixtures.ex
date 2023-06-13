defmodule Phodash.BoardFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Phodash.Board` context.
  """

  @doc """
  Generate a category.
  """
  def category_fixture(attrs \\ %{}) do
    {:ok, category} =
      attrs
      |> Enum.into(%{
        description: "some description",
        position: 42,
        title: "some title"
      })
      |> Phodash.Board.create_category()

    category
  end

  @doc """
  Generate a item.
  """
  def item_fixture(attrs \\ %{}) do
    {:ok, item} =
      attrs
      |> Enum.into(%{
        description: "some description",
        position: 42,
        title: "some title",
        url: "some url"
      })
      |> Phodash.Board.create_item()

    item
  end
end
