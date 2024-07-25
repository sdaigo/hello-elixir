defmodule Example do
  def tuple_test do
    person = {"Bob", 25}

    person
    |> elem(1)
    |> IO.inspect()

    person
    |> put_elem(1, 26)
    |> IO.inspect()

    IO.inspect(person)

    # returns person
  end

  def list_test do
    prime_numbers = [2, 3, 5, 7]

    prime_numbers
    |> length()
    |> IO.puts()

    prime_numbers
    |> Enum.at(3)

    # recursive list
    lst = [1 | [2 | [3 | [4 | []]]]]
    lst |> IO.inspect()

    a_list = [5, :value, true]
    new_list = [:new_element | a_list]
    new_list |> IO.inspect()
  end

  def map_test do
    empty = %{}
    empty |> IO.inspect()

    squares = %{1 => 1, 2 => 4, 3 => 9}
    squares |> IO.inspect()

    squares_new =
      Map.new([
        {1, 1},
        {2, 4},
        {3, 9}
      ])

    squares_new |> IO.inspect()
    squares_new[3] |> IO.inspect()
    squares_new[4] |> IO.inspect()

    squares = Map.put(squares, 4, 16)
    squares |> IO.inspect()
  end

  def fn_test do
    square = fn x -> x * x end
    square.(5)

    print_element = fn x -> IO.puts("output: #{x}") end

    Enum.each(
      [1, 2, 3],
      print_element
    )

    Enum.each(
      # [1, 2, 3],
      1..3,
      fn x -> IO.puts("output: #{x}") end
    )

    # capture operator: takes the full function qualifier
    Enum.each(
      1..3,
      &IO.puts/1
    )

    lambda = &(&1 * &2 * &3)
    lambda.(2, 3, 4)
  end
end
