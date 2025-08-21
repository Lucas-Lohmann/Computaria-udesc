-- ex 1
ehTriangulo x y z
    | (x + y > z) && (x + z > y) && (y + z > x) = True
    | otherwise = False

-- ex 2
tipoTriangulo x y z
    | (x == y) && (x == z) = "Equilatero"
    | (x /= y) && (x /= z) && (z /= y) = "Escaleno"
    | otherwise = "Isosceles"

-- ex 3
triangulo x y z
    | (ehTriangulo x y z == True) = tipoTriangulo x y z
    | otherwise = "nao eh um triangulo"