from funcoes import cadastrar_turma, listar_turma, atualizar_turma, apagar_turma, lista_especial 

def exibir_menu():
    primeira_turma = None
    while True:
        print("\n--------- MENU GESTÃO DE TURMAS ---------")
        print("1 - Cadastrar nova turma")
        print("2 - Listar todas as turmas cadastradas")
        print("3 - Atualizar turma")
        print("4 - Excluir turma")
        print("5 - Relatório Especial (Vagas e Anos)")
        print("6 - Créditos")
        print("9 - Sair")
        print("-----------------------------------------")

        try:
            resposta = int(input("Escolha uma opção: "))
        except ValueError:
            print("\nPor favor, digite apenas números!")
            continue

        if resposta == 1:
            primeira_turma = cadastrar_turma(primeira_turma)

        elif resposta == 2:
            listar_turma(primeira_turma)
        
        elif resposta == 3:
            primeira_turma = atualizar_turma(primeira_turma)
        
        elif resposta == 4:
            primeira_turma = apagar_turma(primeira_turma)

        elif resposta == 5:
            lista_especial(primeira_turma)

        elif resposta == 6:
            print("\n" + "="*41)
            print(" "*10 + "CRÉDITOS - GRUPO 10")
            print("="*41)
            print(" Desenvolvedores:")
            print(" - Arthur Simõis")
            print(" - Lucas Gabriel")
            print(" - João Arthur")
            print(" - João Lisboa")
            print(" - Marcus Paulo")
            print(" - Gustavo Aníbal")
            print("="*41 + "\n")

        elif resposta == 9:
            print("\nSaindo do sistema...")
            break

        else:
            print("\nOpção inválida, tente novamente")