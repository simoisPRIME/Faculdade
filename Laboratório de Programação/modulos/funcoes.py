def soma(a,b):
    return a + b

def potencia(base,expoente):
    mult = base
    for i in range(1,expoente):
        base *= mult
    return base