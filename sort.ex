defmodule Sort do
  def descending([]), do: []
  def descending([a]), do: [a]

  def descending(list) do
    mid = div(Enum.count(list), 2)
    {list_a, list_b} = Enum.split(list, mid)

    merge(
      descending(list_a),
      descending(list_b)
    )
  end

  defp merge([], list_b), do: list_b
  defp merge(list_a, []), do: list_a

  defp merge([hd_a | tl_a], list_b = [hd_b | _]) when hd_a >= hd_b do
    [hd_a | merge(tl_a, list_b)]
  end

  defp merge(list_a = [hd_a | _], [hd_b | tl_b]) when hd_a < hd_b do
    [hd_b | merge(list_a, tl_b)]
  end
end
