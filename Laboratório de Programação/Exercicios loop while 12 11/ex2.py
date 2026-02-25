import random

n = int(input("Quantos números serão gerados? (Digita um número entre 20 a 50): "))

lista1 = []
lista2 = []
lista3 = []

for i in range(n):
    numeros_gerados = random.randint(0, 100)
    lista1.append(numeros_gerados)
    numeros_gerados2 = random.randint(0, 100)
    lista2.append(numeros_gerados2)
    soma = lista1[i] + lista2[i]
    lista3.append(soma)

print("--------------------------------")
print("Lista 1:", lista1)
print("--------------------------------")
print("Lista 2:", lista2)
print("--------------------------------")   
print("Lista 3 (soma dos elementos das listas 1 e 2):", lista3)
