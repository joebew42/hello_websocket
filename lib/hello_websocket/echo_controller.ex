defmodule HelloWebsocket.EchoController do
  @behaviour :cowboy_websocket

  @ten_minutes 1000 * 60 * 10

  def init(req, _state) do
    {:cowboy_websocket, req, nil, %{idle_timeout: @ten_minutes}}
  end

  def websocket_init(state) do
    {:ok, state}
  end

  def websocket_handle({:text, "ping"}, state) do
    {:reply, {:text, "pong"}, state}
  end

  def websocket_info({:text, "ping"}, state) do
    {:reply, {:text, "pong"}, state}
  end
end