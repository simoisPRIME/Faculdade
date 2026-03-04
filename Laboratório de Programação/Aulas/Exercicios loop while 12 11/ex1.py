import random

n = input("Quantos números serão gerados? (Digita um número entre 10 a 100): ")

print("--------------------------------")
print("Números aleatórios gerados:")

pares = [] 
impares = []

print("--------------------------------")

for i in range(int(n)):
    aleatorio = random.randint(1, 1000)
    print(aleatorio)
    if aleatorio % 2 == 0:
        pares.append(aleatorio)
    else:
        impares.append(aleatorio)

print("--------------------------------")
print("Números pares gerados:", pares)
print("--------------------------------")
print("Números ímpares gerados:", impares)
    



