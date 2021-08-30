##Fibonacci
defmodule Fibonacci do
  def of(x) do
    a = 0
    b = 1
    i = 2
    of(a, b, i, x)
  end

  def of(a, b, i, x) do
    unless i >= x do
      IO.puts("#{a}, #{b}, ")
      a = a + b
      b = a + b
      i = i + 2
      of(a, b, i, x)
    else
      unless i <= x do
        IO.puts("#{a}")
      else
        IO.puts("#{a}, #{b}, ")
      end
    end

  end
end
Fibonacci.of(13)
