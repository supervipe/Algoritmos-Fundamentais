#Calculation of infinte series
defmodule Sin do

  def of(x) do
    i = 1
    term = x
    tsin = x
    of(i, x, term, tsin)
  end

  def of(i, x, term, tsin) do
    unless abs(term) < 0.0000001 do
      i = i + 2
      term = -term * x * x / (i * (i - 1))
      tsin = tsin + term
      of(i, x, term, tsin)
    else
      tsin
    end
  end
end

IO.puts("Esperado: 0.70710678118")
IO.puts("Obtido:   #{Sin.of(0.78539816339)}")
