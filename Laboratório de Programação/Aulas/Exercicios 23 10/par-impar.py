"""
try:
    n = int(input("Digite um número: "))

    if n % 2 == 1:
        print(f"O número {n} é ímpar")
    else: 
        print(f"O número {n} é par")

except ValueError:
    print("Somente números sao aceitos. Tente novamente.")
"""
resposta = input("Digite um número: ")

if resposta.isnumeric():
    n = int(resposta)

    if n % 2 == 1:
        print(f"O número {n} é ímpar")
    else: 
        print(f"O número {n} é par")

else: 
    print("Somente números sao aceitos. Tente novamente.")
