defmodule Phodash.ServicesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Phodash.Services` context.
  """

  @doc """
  Generate a provider.
  """
  def provider_fixture(attrs \\ %{}) do
    {:ok, provider} =
      attrs
      |> Enum.into(%{
        name: "some name",
        thumbnail: "some thumbnail"
      })
      |> Phodash.Services.create_provider()

    provider
  end
end
