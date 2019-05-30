use Mix.Config

defmodule Config do
  def http_port() do
    (System.get_env("PORT") || "4000")
    |> String.to_integer()
  end
end

config :hello_websocket, http_port: Config.http_port()