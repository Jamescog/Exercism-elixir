defmodule LogLevel do
  @moduledoc """
  A module for handling log levels and determining alert recipients based on log levels.
  """

  @doc """
  Translates a numeric log `level` into an atom label. Takes into account whether the log level is from a legacy system.

  ## Parameters

    - `level`: An integer representing the log level.
    - `legacy?`: A boolean indicating if the log level is from a legacy system.

  ## Examples

      iex> LogLevel.to_label(1, false)
      :debug

      iex> LogLevel.to_label(5, false)
      :fatal

      iex> LogLevel.to_label(5, true)
      :unknown

  """
  def to_label(level, legacy?) do
    cond do
      level == 0 and not legacy? -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 and not legacy? -> :fatal
      true -> :unknown
    end
  end

  @doc """
  Determines the alert recipient based on the log `level` and whether it is from a legacy system.

  ## Parameters

    - `level`: An integer representing the log level.
    - `legacy?`: A boolean indicating if the log level is from a legacy system.

  ## Examples

      iex> LogLevel.alert_recipient(4, false)
      :ops

      iex> LogLevel.alert_recipient(5, true)
      :dev1

      iex> LogLevel.alert_recipient(0, false)
      false

  """
  def alert_recipient(level, legacy?) do
    log_level = to_label(level, legacy?)
    cond do
      log_level == :error or log_level == :fatal -> :ops
      log_level == :unknown and legacy? -> :dev1
      log_level == :unknown -> :dev2
      true -> false
    end
  end
end
