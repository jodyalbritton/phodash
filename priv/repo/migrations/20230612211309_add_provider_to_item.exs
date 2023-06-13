defmodule Phodash.Repo.Migrations.AddProviderToItem do
  use Ecto.Migration

  def change do
    alter table(:items) do
      add :provider_id, references(:providers, on_delete: :nothing, type: :binary_id)
    end
    create index(:items, [:provider_id])
  end
end
