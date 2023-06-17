defmodule Phodash.Workers.ScheduleWorker do
  use Oban.Worker, queue: :events, max_attempts: 10

  alias Phodash.Board

  @one_hour :timer.minutes(60)

  @impl Oban.Worker
  def perform(%{args:  %{"user_id" => user_id, "item_id" => item_id, "url" => url} = args, attempt: 1}) do

    args
      |> new(schedule_in: @one_hour)
      |> Oban.insert!()

      Board.check_item_up(user_id, item_id, url)

    :ok
  end

  def perform(%{args: %{"user_id" => user_id, "item_id" => item_id, "url" => url}}) do
    Board.check_item_up(user_id, item_id, url)

    :ok
  end
end
