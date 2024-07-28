user_input = IO.gets("Write your ability score: \n")

result =
  case Integer.parse(user_input) do
    :error ->
      "Invalid ability score: #{user_input}"

    {score, _} ->
      modifier = (score - 10) / 2
      "Your ability modifier is #{modifier}"
  end

IO.puts(result)
