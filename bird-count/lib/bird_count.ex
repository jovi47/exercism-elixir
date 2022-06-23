defmodule BirdCount do
  def today([]), do: nil
  def today(list), do: hd(list)

  def increment_day_count([]), do: [1]
  def increment_day_count([head | tail]), do: [head+1 | tail]

  def has_day_without_birds?(list) do
    0 in list
  end

  def total(list) do
    Enum.reduce(list, 0, fn x, acc -> x + acc end)
  end

  def busy_days(list) do
    Enum.count(list, &(&1>=5))
  end
end
