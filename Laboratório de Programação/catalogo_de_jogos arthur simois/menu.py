"""
Interface principal em Python para um sistema de catálogo de jogos, 
gerenciei o fluxo de navegação usando um menu interativo.
Utilizei a estrutura modular que utiliza funções externas para operações de CRUD, 
implementando um loop principal com menu interativo.
"""

from funcoes import cadastrar_jogo, listar_jogos, excluir_jogos

def exibir_menu():

    lista_jogos = []
    while True:
        print("---------MENU---------")
        print("1 - Cadastrar novo jogo")
        print("2 - Listar jogos cadastrados")
        print("3 - Excluir jogo")
        print("4 - Créditos")
        print("9 - Sair")
        print("----------------------")

        resposta = int(input("Escolha uma opção: "))

        if resposta == 1:
            dados_jogo = cadastrar_jogo()
            novo_jogo = list(dados_jogo)
            lista_jogos.append(novo_jogo)
            print("----------------------")
            print("Jogo cadastrado com sucesso!")

        elif resposta == 2:
            print("\n--- Lista de Jogos ---")
            if lista_jogos == []:
                print("Nenhum jogo foi adicionado ainda!")
                print("\n")
            else:
                for i, jogo_atual in enumerate(lista_jogos):
                    print(f"[{i}]", end="")
                    listar_jogos(jogo_atual)

        elif resposta == 3:
            excluir_jogos(lista_jogos)
            print("\n--- Lista de Jogos Atualizada ---")
            for i, jogo_atual in enumerate(lista_jogos):
                print(f"[{i}]", end="")
                listar_jogos(jogo_atual)  
            print("\n")        

        elif resposta == 4:
            print("Nome completo do aluno: Arthur Simõis Gomes")
            print("RGA do aluno: 202511316007")

        elif resposta == 9:
            print("Saindo...")
            break
        else:
            print("\nOpção inválida!")

#Nome completo do aluno: Arthur Simõis Gomes
#RGA do aluno: 202511316007