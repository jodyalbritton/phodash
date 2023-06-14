# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Phodash.Repo.insert!(%Phodash.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

providers = Phodash.Services.Templates.list_templates()

for provider <- providers do
  Phodash.Services.create_provider(provider)
end
