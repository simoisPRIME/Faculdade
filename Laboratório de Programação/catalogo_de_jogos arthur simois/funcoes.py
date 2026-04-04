"""
Arquivo com todas as funções utilizadas no
menu.py.
"""


def cadastrar_jogo():
    nome = input("Digite o nome do jogo: ")
    empresa = input("Digite a empresa do jogo: ")
    genero = input("Digite o gênero do jogo: ")
    plataforma = input("Digite as plataformas do jogo: ")
    ano = input("Digite o ano do jogo: ")
    return nome, empresa, genero, plataforma, ano

def listar_jogos(jogo):
    print(f"{jogo[0]} | Empresa: {jogo[1]} | Gênero: {jogo[2]} | Plataforma: {jogo[3]} | Ano: {jogo[4]}")
    
def excluir_jogos(lista_jogos):
    while True:
        indice = int(input("Digite o número do jogo a ser excluído: "))
        if indice >= len(lista_jogos) or indice < 0:
            print("Jogo/Índice não encontrado!")
        else:
            jogo_excluido = lista_jogos[indice]
            print(f"Jogo a ser excluído: {jogo_excluido[0]} ({jogo_excluido[4]})")
            resposta_excluir = input("Deseja excluir esse jogo? ('S' para sim, 'N' para não): ").lower()
            if resposta_excluir == 's':
                lista_jogos.pop(indice)
                print("Jogo excluído com sucesso!")
            else:
                print("Operação cancelada!")
            resposta_excluir_novamente = input("Deseja excluir mais algum jogo?: ").lower()
            if resposta_excluir_novamente == 'n':
                break
           
#Nome completo do aluno: Arthur Simõis Gomes
#RGA do aluno: 202511316007
