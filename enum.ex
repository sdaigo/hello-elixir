defmodule EnumTest do
  def map_ do
    Enum.map([1, 2, 3], fn x -> x * 2 end)
    |> IO.inspect()
  end

  def filter_ do
    Enum.filter([1, 2, 3], fn x -> rem(x, 2) == 0 end)
    |> IO.inspect()
  end

  def reduce_ do
    Enum.reduce([1, 2, 3], 0, fn x, acc -> x + acc end)
    |> IO.inspect()
  end

  def run do
    map_()
    filter_()
    reduce_()
  end
end
