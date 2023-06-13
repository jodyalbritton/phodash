defmodule Phodash.ServicesTest do
  use Phodash.DataCase

  alias Phodash.Services

  describe "providers" do
    alias Phodash.Services.Provider

    import Phodash.ServicesFixtures

    @invalid_attrs %{name: nil, thumbnail: nil}

    test "list_providers/0 returns all providers" do
      provider = provider_fixture()
      assert Services.list_providers() == [provider]
    end

    test "get_provider!/1 returns the provider with given id" do
      provider = provider_fixture()
      assert Services.get_provider!(provider.id) == provider
    end

    test "create_provider/1 with valid data creates a provider" do
      valid_attrs = %{name: "some name", thumbnail: "some thumbnail"}

      assert {:ok, %Provider{} = provider} = Services.create_provider(valid_attrs)
      assert provider.name == "some name"
      assert provider.thumbnail == "some thumbnail"
    end

    test "create_provider/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Services.create_provider(@invalid_attrs)
    end

    test "update_provider/2 with valid data updates the provider" do
      provider = provider_fixture()
      update_attrs = %{name: "some updated name", thumbnail: "some updated thumbnail"}

      assert {:ok, %Provider{} = provider} = Services.update_provider(provider, update_attrs)
      assert provider.name == "some updated name"
      assert provider.thumbnail == "some updated thumbnail"
    end

    test "update_provider/2 with invalid data returns error changeset" do
      provider = provider_fixture()
      assert {:error, %Ecto.Changeset{}} = Services.update_provider(provider, @invalid_attrs)
      assert provider == Services.get_provider!(provider.id)
    end

    test "delete_provider/1 deletes the provider" do
      provider = provider_fixture()
      assert {:ok, %Provider{}} = Services.delete_provider(provider)
      assert_raise Ecto.NoResultsError, fn -> Services.get_provider!(provider.id) end
    end

    test "change_provider/1 returns a provider changeset" do
      provider = provider_fixture()
      assert %Ecto.Changeset{} = Services.change_provider(provider)
    end
  end
end
