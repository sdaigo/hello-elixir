defmodule Username do
  def sanitize([]), do: []

  def sanitize([c | tail]) do
    p =
      case c do
        c when c == ?ä -> ~c"ae"
        c when c == ?ö -> ~c"oe"
        c when c == ?ü -> ~c"ue"
        c when c == ?ß -> ~c"ss"
        c when c == ?_ -> [c]
        c when ?a <= c and c <= ?z -> [c]
        _ -> []
      end

    p ++ sanitize(tail)
  end
end
