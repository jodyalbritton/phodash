defmodule Phodash.Board.Item do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "items" do
    field :description, :string
    field :position, :integer
    field :title, :string
    field :url, :string
    field :status, Ecto.Enum, values: [:unknown, :up, :down], default: :unknown
    field :monitored, :boolean

    belongs_to :category, Phodash.Board.Category
    belongs_to :user, Phodash.Accounts.User
    belongs_to :provider, Phodash.Services.Provider

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:title, :url, :description, :position, :provider_id, :status, :monitored])
    |> validate_required([:title, :url])
  end
end
