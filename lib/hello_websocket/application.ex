defmodule HelloWebsocket.Application do
  use Application

  def start(_type, _args) do
    children = [
      Plug.Cowboy.child_spec(scheme: :http, plug: HelloWebsocket.Router, options: http_options())
    ]

    opts = [strategy: :one_for_one, name: HelloWebsocket.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defp http_options() do
    [
      port: HelloWebsocket.Config.http_port(),
      dispatch: HelloWebsocket.Router.dispatch()
    ]
  end
end
