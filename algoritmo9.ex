defmodule ConversionCN do
  def of(x) do
    n = String.length x
    decimal = 0
    base = ?0
    digito = 0
    i = 0
    of(n, decimal, base, digito, i, x)
  end

  def of(n, decimal, base, digito, i, x) do
    unless i >= n do
      y = String.at(x, i)
      y = y |> String.to_charlist |> hd
      digito = y - base
      decimal = decimal * 10 + digito

      i = i - 1
      of(n, decimal, base, digito, i, x)
    else
      IO.inspect decimal, label: "Formato decimal: "
    end
  end
end

ConversionCN.of("123")
