##Count of how many students's grades passed 50
notas = [78, 80, 33, 44, 99]

quantidade = notas
|> Enum.filter(&(&1 >= 50))
|> Enum.count()

IO.puts("O total de alunos aprovados foram #{quantidade}")
