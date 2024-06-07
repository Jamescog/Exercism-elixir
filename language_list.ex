defmodule LanguageList do
  @moduledoc """
  A module for managing a list of programming languages.
  """

  @doc """
  Returns an empty list.
  """
  def new() do
    []
  end

  @doc """
  Prepends a language to the list.

  ## Parameters

    - `list`: The list of languages.
    - `language`: The language to prepend.

  ## Examples

      iex> LanguageList.add([], "Elixir")
      ["Elixir"]
  """
  def add(list, language) do
    [language | list]
  end

  @doc """
  Removes the first language from the list.

  ## Parameters

    - `list`: The list of languages.

  ## Examples

      iex> LanguageList.remove(["Elixir", "Ruby"])
      ["Ruby"]
  """
  def remove(list) do
    List.delete_at(list, 0)
  end

  @doc """
  Returns the first language in the list.

  ## Parameters

    - `list`: The list of languages.

  ## Examples

      iex> LanguageList.first(["Elixir", "Ruby"])
      "Elixir"
  """
  def first(list) do
    List.first(list)
  end

  @doc """
  Returns the number of languages in the list.

  ## Parameters

    - `list`: The list of languages.

  ## Examples

      iex> LanguageList.count(["Elixir", "Ruby"])
      2
  """
  def count(list) do
    length(list)
  end

  @doc """
  Checks if "Elixir" is in the list.

  ## Parameters

    - `list`: The list of languages.

  ## Examples

      iex> LanguageList.functional_list?(["Elixir", "Ruby"])
      true

      iex> LanguageList.functional_list?(["Ruby", "Python"])
      false
  """
  def functional_list?(list) do
    "Elixir" in list
  end
end
