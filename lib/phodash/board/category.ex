defmodule Phodash.Board.Category do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "categories" do
    field :title, :string
    field :description, :string
    field :position, :integer

    has_many :items, Phodash.Board.Item
    belongs_to :user, Phodash.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(category, attrs) do
    category
    |> cast(attrs, [:title, :description, :position])
    |> validate_required([:title])
  end
end
