defmodule Phodash.Repo.Migrations.AddFieldsToProvider do
  use Ecto.Migration

  def change do
    alter table(:providers) do
      add :settings, :map
      add :description, :string
      add :category, :string
      add :support_url, :string
      add :twitter_handle, :string
      add :github_url, :string
    end
    create unique_index(:providers, [:name])
  end
end
