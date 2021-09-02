#Inversion of digits of a number
defmodule Inversion do
  def of(x) do
    inv = 0
    digito = 0
    of(x, inv, digito)
  end

  def of(x, inv, digito) do
    unless x <= 0 do
      digito = rem(x, 10)
      inv = inv * 10 + digito
      x = trunc(x/10)
      of(x, inv, digito)
    else
      inv
    end
  end
end

IO.puts("O valor eh 157 e o inverso eh #{Inversion.of(157)}")
