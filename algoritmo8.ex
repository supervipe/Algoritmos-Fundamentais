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
      List.insert_at(res,digito,r)
      IO.puts(["r  ",Enum.join(res, " ")])
      digito = digito + 1
      x = trunc(x / 2)
      # of(r, res, digito, x)
    else
      y = digito - 1
      unless y <= 0  do
        z = Enum.fetch(res, y)
        IO.puts(z)
        y--
        of(r, res, digito, x)
      end
    end
  end
end

IO.puts("O valor eh 157 e o inverso eh #{Conversion.of(157)}")
