defmodule Phodash.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      PhodashWeb.Telemetry,
      # Start the Ecto repository
      Phodash.Repo,
      # Oban
      {Oban, Application.fetch_env!(:phodash, Oban)},
      # Start the PubSub system
      {Phoenix.PubSub, name: Phodash.PubSub},
      # Start Finch
      {Finch, name: Phodash.Finch},
      # Start the Endpoint (http/https)
      PhodashWeb.Endpoint
      # Start a worker by calling: Phodash.Worker.start_link(arg)
      # {Phodash.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Phodash.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    PhodashWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
