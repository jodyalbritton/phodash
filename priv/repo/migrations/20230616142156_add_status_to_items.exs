defmodule Phodash.Repo.Migrations.AddStatusToItems do
  use Ecto.Migration

  def change do
    alter table(:items) do
      add :status, :string, default: ":unknown", null: false
      add :monitored, :boolean, default: true
    end
  end
end
