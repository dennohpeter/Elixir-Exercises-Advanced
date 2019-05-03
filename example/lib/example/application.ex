defmodule Example.Application do
  use Application
  require Logger

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      {Plug.Cowboy, scheme: :http, plug: Example.Router, options: [port: cowboy_port()]}
    ]
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Example.Supervisor]

    Logger.info("Starting application...")

    Supervisor.start_link(children, opts)
  end
  defp cowboy_port,  do: Application.get_env(:example, :cowboy_port, 8080)
end
