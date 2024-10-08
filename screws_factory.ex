defmodule ScrewsFactory do
  def run(pieces) do
    pieces
    |> Stream.chunk(50)
    |> Stream.flat_map(&add_thread/1)
    |> Stream.chunk(100)
    |> Stream.map(&add_head/1)
    |> Enum.each(&output/1)
  end

  defp add_thread(piece) do
    Process.sleep(50)
    Enum.map(piece, &(&1 <> "--"))
  end

  defp add_head(piece) do
    Process.sleep(100)
    Enum.map(piece, &("o" <> &1))
  end

  defp output(screw) do
    IO.inspect(screw)
  end
end
