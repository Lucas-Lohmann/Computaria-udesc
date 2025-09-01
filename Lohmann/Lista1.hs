-- ex 1 -- Triangulo valido
ehTriangulo x y z
    | (x + y > z) && (x + z > y) && (y + z > x) = True
    | otherwise = False

-- ex 2 -- Classificar triangulo
tipoTriangulo x y z
    | (x == y) && (x == z) = "Equilatero"
    | (x /= y) && (x /= z) && (z /= y) = "Escaleno"
    | otherwise = "Isosceles"

-- ex 3 -- Validar e classificar triangulo
triangulo x y z
    | (ehTriangulo x y z == True) = tipoTriangulo x y z
    | otherwise = "nao eh um triangulo"

-- ex 4 -- Soma de pares de 0 até n
somaPares 2 = 2
somaPares n 
    | (rem n 2 == 0) = n + somaPares(n-2)
    | otherwise = somaPares(n-1)

-- ex 5
somaPot2m m 0 = m
somaPot2m m n = somaPot2m m (n-1)+((2^n)*m) 

-- ex 6 -- Verificar numeros primos
verificarDivisores i n
    | i * i > n = True
    | mod n i == 0 = False
    | otherwise = verificarDivisores (i + 1) n

primo n 
    | n <= 1 = False
    | otherwise = verificarDivisores 2 n

-- ex 7 -- Serie pi
seriePI :: Int -> Double
seriePI n = sum [4 * ((-1) ^ i) / (fromIntegral (2 * i + 1)) | i <- [0..n-1], 4 / fromIntegral (2 * i + 1) > 4 / fromIntegral n]
