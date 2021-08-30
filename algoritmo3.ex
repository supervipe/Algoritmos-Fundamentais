##Sum of a group of numbers
num = [10, 15, 25, 50]

soma = Enum.sum(num)

IO.puts("A soma dos valores eh igual a #{soma}")

num2 = [10, 15, 25, 50, 150]
##Version using function
soma2 = Enum.reduce(num2, fn(x,sum) -> x + sum end)

IO.puts("A soma dos valores eh igual a #{soma2}")
