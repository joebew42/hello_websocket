defmodule HelloWebsocket.Application do
  use Application

  @http_options [
    port: Application.get_env(:hello_websocket, :http_port),
    dispatch: HelloWebsocket.Router.dispatch()
  ]

  def start(_type, _args) do
    children = [
      Plug.Cowboy.child_spec(scheme: :http, plug: HelloWebsocket.Router, options: @http_options)
    ]

    opts = [strategy: :one_for_one, name: HelloWebsocket.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
