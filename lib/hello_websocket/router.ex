defmodule HelloWebsocket.Router do
  use Plug.Router

  plug Plug.Static, at: "/", from: :hello_websocket

  plug :match
  plug :dispatch

  match _ do
    send_resp(conn, 404, "Not Found")
  end

  def dispatch() do
    [
      {:_, [
        {"/echo", HelloWebsocket.EchoController, []},
        {:_, Plug.Cowboy.Handler, {__MODULE__, []}}
      ]}
    ]
  end
end