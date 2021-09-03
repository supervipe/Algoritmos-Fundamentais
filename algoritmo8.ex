#Conversion of digits of a number
defmodule Conversion do
  def of(x) do
    res = []
    digito = 0
    r = 0
    of(r, res, digito, x)
  end

  def of(r, res, digito, x) do
    unless x == 0 do
      r = rem(x, 2)
      res = res ++ [r]

      digito = digito + 1
      x = trunc(x / 2)
      of(r, res, digito, x)
    else
      res = Enum.reverse(res)
      IO.inspect res, label: "The list is"
    end
  end
end

Conversion.of(233)
