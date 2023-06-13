defmodule Phodash.Services.Provider do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "providers" do
    field :name, :string
    field :thumbnail, :string


    has_many :items, Phodash.Board.Item

    timestamps()
  end

  @doc false
  def changeset(provider, attrs) do
    provider
    |> cast(attrs, [:name, :thumbnail])
    |> validate_required([:name, :thumbnail])
  end
end
