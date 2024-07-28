defmodule MyList do
  def each([], _), do: nil

  def each([head | tail], fun) do
    fun.(head)
    each(tail, fun)
  end

  def map([], _), do: []

  def map([head | tail], fun) do
    [fun.(head) | map(tail, fun)]
  end

  def reduce([], acc, _), do: acc

  def reduce([head | tail], acc, fun) do
    reduce(tail, fun.(head, acc), fun)
  end

  def filter([], _), do: []

  def filter([head | tail], fun) do
    if fun.(head) do
      [head | filter(tail, fun)]
    else
      filter(tail, fun)
    end
  end

  def run() do
    enchanted_items = [
      %{title: "Edwin's Longsword", price: 150},
      %{title: "Healing Potion", price: 60},
      %{title: "Edwin's Rope", price: 30},
      %{title: "Dragon's Spear", price: 100}
    ]

    each(enchanted_items, fn item -> IO.puts(item.title) end)

    map_result =
      map(enchanted_items, fn item -> %{title: item.title, price: item.price * 1.1} end)

    IO.inspect(map_result)

    reduce_result = reduce(enchanted_items, 0, fn item, sum -> item.price + sum end)

    IO.inspect(reduce_result)

    filter_result = filter(enchanted_items, fn item -> item.price < 70 end)

    IO.inspect(filter_result)
  end
end
