-- Variáveis anônimas
f 7 _ _ = 10
f _ 8 _ = 20
f _ _ 9 = 30
f _ _ _ = 0

-- gambling
lucky 7 = "I LOVE GAMBLING"
lucky x = "Aw dang it"

-- RECURSÃO

-- Soma de números de 0 até n
soma 1 = 1
soma n = n + soma(n-1)

-- Fibonacci
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)

-- Fatorial
fat 0 = 1
fat n = n * fat (n-1)

-- Soma de números de x até y
-- incluindo x e y
somai x y = soma y - soma(x-1)
-- excluindo x e y
somae x y = soma y - soma(x-1) - x - y

-- soma de raizes quadradas do 6 não sei tmb 
a 1 = sqrt 6
a n = sqrt(6 + a (n-1))


-- soma dos n termos da serie harmonica
serieHarmonica :: Float -> Float
serieHarmonica 1 = 1
serieHarmonica n = 1/n + serieHarmonica(n-1)

-- soma dos quadrados dos n numeros naturais
somaQ :: Int -> Int
somaQ 1 = 1
somaQ n = n ^ 2 + somaQ(n-1)