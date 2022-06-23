defmodule KitchenCalculator do

  @unit_milliliters_equivalents %{:cup => 240.0, :fluid_ounce => 30.0, :teaspoon => 5.0, :tablespoon => 15.0, :milliliter => 1}
  def get_volume({_, volume}), do: volume

  def to_milliliter({unit, volume}) do
    {:milliliter, @unit_milliliters_equivalents[unit] * volume}
  end

  def from_milliliter({:milliliter, volume}, unit) do
    {unit, volume / @unit_milliliters_equivalents[unit]}
  end

  def convert({from_unit, volume}, to_unit) do
    to_milliliter({from_unit, volume})
    |> from_milliliter(to_unit)
  end
end
