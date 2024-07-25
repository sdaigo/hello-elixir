defmodule Geometry.Rectangle do
  @moduledoc "Implements basic rectangle function"
  def area(w, h) do
    w * h
  end

  # same name functinon but different arity
  def area(a) do
    area(a, a)
  end
end

defmodule Geometry.Circle do
  @moduledoc "Implements basic rectangle function"
  @pi 3.14159

  @doc "Computes the area of circle"
  @spec area(number) :: number
  def area(r) do
    r * r * @pi
  end

  @doc "Print result of `area`"
  def print_area(r) do
    area(r)
    |> Float.to_string()
    |> IO.puts()
  end
end
