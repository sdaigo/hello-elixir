defmodule NumberCompare do
  # def greater(x, y) do
  #   check(x >= y, x, y)
  # end

  # defp check(true, n, _), do: n
  # defp check(false, _, n), do: n
  def greater(x, y) when x >= y do
    x
  end

  def greater(_, y), do: y
end
