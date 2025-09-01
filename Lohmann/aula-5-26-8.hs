prod 1 = 1
prod n = n * prod (n-1)

sg1 0 r = 1
sg1 n r = sg1 (n-1) r + r ^ n

sg2 1 r = 1
sg2 n r = sg2 (n-1) r + r ^ (n-1)

somaImpares 1 = 1
somaImpares n 
    | (rem n 2 /= 0) = n + somaImpares (n-2)
    | otherwise = somaImpares (n-1)

expo x 0 = 1
expo x n = expo x (n-1) + (x**n) 

