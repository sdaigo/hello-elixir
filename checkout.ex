defmodule Checkout do
  # def total_cost(price, quantity \\ 10) do
  #   price * quantity
  # end
  def total_cost(price, tax_rate) when price >= 0 and tax_rate >= 0 do
    price * (tax_rate + 1)
  end
end
