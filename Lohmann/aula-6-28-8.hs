-- tamanho da lista
tamanho [] = 0
tamanho(x:xs) = 1 + tamanho xs

-- soma dos numeros na lista
soma[] = 0
soma(x:xs) = x + soma xs

-- maior numero da lista
maior[a] = 0
maior(a:x) = if (a > maior x) then a else maior x

-- numeros de 0 a 8 elevados ao cubo
conjuntoA = [x^3 | x <- [0..8]]

-- duplicar os valores na lista
duplicalist [] = []
duplicalist (x:xs) = x:x:duplicalist xs

-- retorne os valores impares da lista
listaInput [] = []
listaInput (x:xs) = if (mod x 2 /= 0) then x:listaInput xs else listaInput xs