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
    |> validate_url(:url)
    |> validate_required([:title, :url])
  end


  def validate_url(changeset, field, opts \\ []) do
    validate_change changeset, field, fn _, value ->
      case URI.parse(value) do
        %URI{scheme: nil} -> "is missing a scheme (e.g. https)"
        %URI{host: nil} -> "is missing a host"
        %URI{host: host} ->
          case :inet.gethostbyname(Kernel.to_charlist host) do
            {:ok, _} -> nil
            {:error, _} -> "invalid host"
          end
      end
      |> case do
        error when is_binary(error) -> [{field, Keyword.get(opts, :message, error)}]
        _ -> []
      end
    end
  end
end
