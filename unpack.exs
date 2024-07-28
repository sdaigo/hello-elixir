[a, a, a] = [1, 1, 1]

[a, a, "pineapples"] = ["apples", "apples", "pineapples"]

# match error
# [a, a, "pineapples"] = ["apples", "apples", "orange"]

user = %{
  email: "johndoe@example.com",
  password: "qwerty"
}

IO.inspect(user)

abilities = %{strength: 16, dexterity: 12, intelligence: 10}
%{strength: v} = abilities

IO.inspect(v)

date = ~D[2024-01-01]
%{year: year} = date

IO.puts(year)
