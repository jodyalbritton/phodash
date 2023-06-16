defmodule Phodash.Workers.ScheduleWorker do
  use Oban.Worker, queue: :scheduled, max_attempts: 10

  alias Phodash.Board

  @one_hour  60 * 60

  @impl true
  def perform(%{args:  %{"user_id" => user_id, "item_id" => item_id, "url" => url} = args, attempt: 1}) do
    args
    |> new(schedule_in: @one_hour)
    |> Oban.insert!()

    Board.check_item_up(user_id, item_id, url)
  end

  def perform(%{args: %{"user_id" => user_id, "item_id" => item_id, "url" => url}  = args}) do
    args
    |> new(schedule_in: @one_hour)
    |> Oban.insert!()


    Board.check_item_up(user_id, item_id, url)
  end
end
