defmodule Phodash.Services.Provider do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "providers" do
    field :name, :string
    field :thumbnail, :string
    field :description, :string
    field :category, :string
    field :support_url, :string
    field :twitter_handle, :string
    field :github_url, :string



    has_many :items, Phodash.Board.Item

    timestamps()
  end

  @doc false
  def changeset(provider, attrs) do
    provider
    |> cast(attrs, [
      :name,
      :thumbnail,
      :description,
      :category,
      :support_url,
      :twitter_handle,
      :github_url
      ])
    |> validate_required([:name])
  end
end
