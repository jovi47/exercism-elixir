defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language] ++ list
  end

  def remove(list) do
    list -- [hd(list)]
  end

  def first(list) do
    hd(list)
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    is_list(list) and "Elixir" in list
  end
end
