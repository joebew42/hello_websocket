defmodule HelloWebsocket.Config do
  def http_port() do
    case System.get_env("PORT") do
      nil ->
        Application.get_env(:hello_websocket, :http_port)

      port_as_string ->
        String.to_integer(port_as_string)
    end
  end
end