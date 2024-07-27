defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, v} = volume_pair
    v
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :cup do
    {:milliliter, get_volume(volume_pair) * 240.0}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :fluid_ounce do
    {:milliliter, get_volume(volume_pair) * 30.0}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :teaspoon do
    {:milliliter, get_volume(volume_pair) * 5.0}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :tablespoon do
    {:milliliter, get_volume(volume_pair) * 15.0}
  end

  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :milliliter do
    {:milliliter, get_volume(volume_pair) * 1.0}
  end

  def from_milliliter(volume_pair, unit) when unit === :cup do
    {:cup, get_volume(volume_pair) / 240.0}
  end

  def from_milliliter(volume_pair, unit) when unit === :fluid_ounce do
    {:fluid_ounce, get_volume(volume_pair) / 30.0}
  end

  def from_milliliter(volume_pair, unit) when unit === :teaspoon do
    {:teaspoon, get_volume(volume_pair) / 5.0}
  end

  def from_milliliter(volume_pair, unit) when unit === :tablespoon do
    {:tablespoon, get_volume(volume_pair) / 15.0}
  end

  def from_milliliter(volume_pair, unit) when unit === :milliliter do
    {:milliliter, get_volume(volume_pair) / 1.0}
  end

  def convert(volume_pair, unit) do
    m = to_milliliter(volume_pair)
    from_milliliter(m, unit)
  end
end
