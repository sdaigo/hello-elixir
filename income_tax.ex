defmodule IncomeTax do
  @moduledoc """
  calculates income tax following these rules:
  - 2,000 <= -> no tax
  - 3,000 <= -> pay 5%
  - 6,000 <= -> pay 10%
  - 6,000 >  -> pay 15%
  """
  def total(salary) when salary <= 2000 do
    0
  end

  def total(salary) when salary <= 3000 do
    salay * 0.05
  end

  def total(salary) when salary <= 6000 do
    salary * 0.1
  end

  def total(salary) do
    salary * 0.15
  end
end
