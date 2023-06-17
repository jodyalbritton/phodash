defmodule Phodash.JobManager do
  import Ecto.Query, only: [where: 3]


  def cancel_job(item_id) do
    Oban.Job
      |> where([j], j.queue == "events")
      |> where([j], j.args == ^%{"item_id" => item_id})
      |> Oban.cancel_all_jobs()
  end
end
