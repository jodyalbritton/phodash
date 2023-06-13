defmodule Phodash.Repo do
  use Ecto.Repo,
    otp_app: :phodash,
    adapter: Ecto.Adapters.Postgres


  @doc """
  Uses a scoped postgres advisory to allow locking a resource.
  """
  def multi_transaction_lock(multi, name, {scope, id}) when is_atom(scope) and is_binary(id) do
    Ecto.Multi.run(multi, name, fn repo, _changes ->
      repo.query("SELECT pg_advisory_xact_lock(#{:erlang.phash2(scope)}, #{id})")
    end)
  end

  def multi_transaction_lock(multi, name, %struct{id: id}) when is_binary(id) do
    multi_transaction_lock(multi, name, {struct, id})
  end
end
