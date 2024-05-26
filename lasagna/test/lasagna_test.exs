defmodule LasagnaTest do
  use ExUnit.Case
  doctest Lasagna

  test "greets the world" do
    assert Lasagna.hello() == :world
  end
end
