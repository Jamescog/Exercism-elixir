defmodule Lasagna do

  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(min) do
    expected_minutes_in_oven() - min
  end

  def preparation_time_in_minutes(num) do
    2 * num
  end

  def total_time_in_minutes(num_of_layers, min) do
     preparation_time_in_minutes(num_of_layers) + min
  end

  def alarm() do
    "Ding!"
  end
end
