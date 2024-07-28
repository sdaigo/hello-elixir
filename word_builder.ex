defmodule WordBuilder do
  def build(alphabets, positions) do
    positions
    |> Enum.map(fn at -> String.at(alphabets, at) end)
    |> Enum.join()
  end
end
