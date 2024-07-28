defmodule Factorial do
  def of(0), do: 1

  # not optimized
  # def of(n) when n > 0, do: n * of(n - 1)
  def of(n), do: aux(n, 1)

  def aux(0, acc), do: acc

  def aux(n, acc) when n > 0 do
    aux(n - 1, n * acc)
  end
end
