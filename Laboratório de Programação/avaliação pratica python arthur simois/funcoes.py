import os

# 1. A REGRA DO NÚMERO MÁGICO (ID AUTOMÁTICO)
def gerar_id():
    # Se o caderninho do contador não existir, a gente cria um começando do 0
    if not os.path.exists("contador.txt"):
        with open("contador.txt", "w") as f:
            f.write("0")
    
    # O bibliotecário lê qual foi o último número usado
    with open("contador.txt", "r") as f:
        ultimo_id = int(f.read())
    
    # Ele soma +1 (se era 5, vira 6)
    novo_id = ultimo_id + 1
    
    # Ele apaga o número antigo e escreve o novo no caderninho
    with open("contador.txt", "w") as f:
        f.write(str(novo_id))
    
    return novo_id

# 2. A REGRA DE GUARDAR NA ESTANTE (CADASTRAR)
def cadastrar_item():
    cod = gerar_id() # Pega o número novo
    nome = input("Nome do objeto: ")
    cor = input("Cor: ")
    tamanho = input("Tamanho: ")
    preco = input("Preço: ")

    # O 'a' significa APPEND (Adicionar ao final do arquivo sem apagar o resto)
    with open("dados.txt", "a") as f:
        # Ele escreve os dados separados por um ponto e vírgula
        f.write(f"{cod};{nome};{cor};{tamanho};{preco}\n")
    print(f"Pronto! Guardei com o código {cod}")

# 3. A REGRA DE LER A ESTANTE (LISTAR)
def listar_itens():
    if not os.path.exists("dados.txt"):
        print("A estante está vazia!")
        return

    print("\n--- COISAS NA ESTANTE ---")
    with open("dados.txt", "r") as f:
        for linha in f:
            # O bibliotecário tira os pontos e vírgulas para a gente ler melhor
            dados = linha.strip().split(";")
            print(f"CÓDIGO: {dados[0]} | NOME: {dados[1]} | COR: {dados[2]}")

# 4. A REGRA DE JOGAR FORA (EXCLUIR)
def excluir_item():
    alvo = input("Qual o código do que você quer jogar fora? ")
    sobraram = []
    encontrou = False

    with open("dados.txt", "r") as f:
        linhas = f.readlines()

    for linha in linhas:
        # Se o código da linha NÃO for o que eu quero apagar, eu guardo ele
        if linha.split(";")[0] != alvo:
            sobraram.append(linha)
        else:
            encontrou = True

    # O bibliotecário reescreve o arquivo só com o que sobrou
    with open("dados.txt", "w") as f:
        f.writelines(sobraram)
    
    if encontrou:
        print("Joguei no lixo!")
    else:
        print("Não achei esse código.")