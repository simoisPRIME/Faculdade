# Lista de nomes com algumas repetições

nomes = [
    "Bruna", "Ana", "Bruno", "Carla", "Diego", "Eduardo",
    "Fernanda", "Gustavo", "Helena", "Igor", "Julia",
    "Karla", "Bruna", "Lucas", "Marcos", "Natália", "Otávio",
    "Paula", "Rafael", "Maria", "Ana", 'Julia', 'Sara', 'Tiago', "Vanessa", 
    "Ana", "Bruno", "Carla", "Diego", "Eduardo",
    "Fernanda", "Gustavo", "Helena", "Sara", "Igor", "Julia",
    "Karla", "Lucas", "Marcos", "Natália", "Otávio",
    "Paula", "Rafael", "Maria", "Eduardo", "Sara", "Tiago", "Vanessa",
    "Ana", "Bruno", "Pedro", "Carla", "Diego", "Eduardo",
    "Fernanda", "Gustavo", "Helena", "Igor", "Julia", "Pedro"
]

nome = input("Digite um nome para verificar quantas vezes ele aparece na lista: ").title()

if nome in nomes:
    quantidade = nomes.count(nome)
    print(f"O nome '{nome}' aparece {quantidade} vezes na lista.")
else:
    print(f"O nome '{nome}' não foi encontrado na lista.")