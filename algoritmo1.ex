##Change of value of two variables
a = 10
b = 50

IO.puts("A variavel A eh igual a #{a} e a variavel B eh igual a #{b}")

[b, a] = [a, b]
IO.puts("Depois da troca a variavel A eh igual a #{a} e a variavel B eh igual a #{b}")
