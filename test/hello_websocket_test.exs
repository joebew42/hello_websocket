defmodule HelloWebsocketTest do
  use ExUnit.Case
  doctest HelloWebsocket

  test "greets the world" do
    assert HelloWebsocket.hello() == :world
  end
end
