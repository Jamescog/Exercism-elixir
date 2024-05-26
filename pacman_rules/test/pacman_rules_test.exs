defmodule PacmanRulesTest do
  use ExUnit.Case
  doctest PacmanRules

  test "greets the world" do
    assert PacmanRules.hello() == :world
  end
end
