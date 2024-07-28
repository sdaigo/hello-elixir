defmodule Math do
  def sum([]), do: 0

  def sum([hd | tl]) do
    hd + sum(tl)
  end
end
