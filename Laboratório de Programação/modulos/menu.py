from funcoes import soma, potencia

def exibir_menu():

    while True:
        print("---------MENU---------")
        print("1 - Soma")
        print("2 - Potência")
        print("9 - Sair")
        print("----------------------")

        resposta = int(input("Escolha uma opção: "))

        if resposta == 1:
            a = int(input("Digite o primeiro dígito da soma: "))
            b = int(input("Digite o segundo dígito da soma: "))
            print(f"A soma de {a} e {b} é {soma(a,b)}")
        elif resposta == 2:
            a = int(input("Digite o primeiro dígito da potenciação: "))
            b = int(input("Digite o segundo dígito da potenciação: "))
            print(f"A potenciação de {a} ^ {b} é {potencia(a,b)}")
        elif resposta == 9:
            print("Saindo...")
            break
        else:
            print("\nOpção inválida!")