class turma:
    def __init__(self, codigo, vagas, ano, coordenador):
        self.codigo = codigo
        self.curso = "Enfermagem"
        self.vagas = vagas 
        self.ano = ano
        self.coordenador = coordenador
        self.proximo = None

def cadastrar_turma(primeira_turma):
    print("\n----Cadastro da Turma----")
    codigo = input("Digite o código da turma: ")
    vagas = int(input("Digite o número de vagas da turma: ")) #tem que ser inteiro pra conferir se tem mais de 40 vagas
    ano = input("Digite o ano de ingresso da turma: ")
    coordenador = input("Digite o nome do coordenador do curso: ")

    nova_turma = turma(codigo, vagas, ano, coordenador)

    if primeira_turma is None: #se nao tem turma essa vai ser a primeira
        primeira_turma = nova_turma
        print("\nPrimeira turma cadastrada")
    else: #se ja foi cadastrada uma turma
        atual = primeira_turma #ponteiro temporário pro codigo ir andando de turma em turma ate achar a ultima

        while atual.proximo is not None: #veririca se a turma atual é a ultima da fila
            atual = atual.proximo
        
        atual.proximo = nova_turma #achou a ultima da fila e adicionou a nova turma
        print("Turma cadastrada")

    return primeira_turma

def listar_turma(primeira_turma):
    if primeira_turma is None:
        print("\nNenhuma turma foi cadastrada ainda!")
    else:
        atual = primeira_turma
        print("\n----Lista das Turmas Cadastradas----")
        while atual is not None:
            print(f"Código: {atual.codigo} | Vagas: {atual.vagas} | Coordenador: {atual.coordenador} | Ano: {atual.ano}")
            atual = atual.proximo

def atualizar_turma(primeira_turma):
    if primeira_turma is None:
        print("\nNenhuma turma foi cadastrada ainda!")
        return primeira_turma #se nao tem nenhuma turma, so volta a estaca zero
    
    codigo_busca = input("\nDigite o código da turma a ser alterada: ")
    atual = primeira_turma

    while atual is not None:
        if atual.codigo == codigo_busca:
            print(f"\n----Turma {codigo_busca} encontrada----")
            print("Digite os novos dados:")

            nova_vagas = int(input("Novo número de vagas: "))
            novo_ano = input("Novo ano de ingresso: ")
            novo_coordenador = input("Novo nome do coordenador: ")

            atual.vagas = nova_vagas
            atual.ano = novo_ano
            atual.coordenador = novo_coordenador
            print("\n----Turma alterada com sucesso----")

            break

        atual = atual.proximo
    else:
        print("Turma não encontrada! Tente novamente")

    return primeira_turma

def apagar_turma(primeira_turma): #pra apagar uma turma precisamos descolar ela da lista encadeada e anexar a anterior com a posterior
    if primeira_turma is None:
        print("\nNenhuma turma foi cadastrada ainda!")
        return primeira_turma
    
    print("\nCódigos das turmas disponíveis para exclusão:")
    temp = primeira_turma #ponteiro temporario pra listar as turma que tem
    
    while temp is not None:
        print(f" - {temp.codigo}")
        temp = temp.proximo
    
    codigo_busca = input("\nDigite o código da turma a ser excluída: ")
    atual = primeira_turma

    if codigo_busca == primeira_turma.codigo: #se ela for a primeira so passar a primeira turma pra segunda que o python ja apaga ela (garbage collecting)
        primeira_turma = primeira_turma.proximo
        print("\n----Turma excluída com sucesso----")
        return primeira_turma
    
    else:
        anterior = primeira_turma
        atual = primeira_turma.proximo
        while atual is not None:
            if atual.codigo == codigo_busca:
                anterior.proximo = atual.proximo
                print("\n----Turma excluída com sucesso----")
                break
            anterior = atual
            atual = atual.proximo
        
        else:
            print("\nTurma não encontrada! Tente novamente")
    
    return primeira_turma

def lista_especial(primeira_turma): #funcao especial pro que o nelcileno pediu no ava, turmas com mais de 40 vagas e quantidade de turmas por ano de ingresso
    if primeira_turma is None:
        print("\nNenhuma turma foi cadastrada ainda!")
    else:
        atual = primeira_turma
        encontrou = False
        contagem_anos = {}

        print("\n----Lista das Turmas com mais de 40 Vagas----")
        while atual is not None:
            if atual.vagas > 40:
                print(f"Código: {atual.codigo} | Ano: {atual.ano} | Coordenador: {atual.coordenador}")
                encontrou = True
            
            ano_da_turma = atual.ano
            if ano_da_turma in contagem_anos:
                contagem_anos[ano_da_turma] += 1 # Já existe, soma 1
            else:
                contagem_anos[ano_da_turma] = 1  # Não existe, começa com 1
                
            atual = atual.proximo
        
        if encontrou == False:
            print("Nenhuma turma cadastrada possui mais de 40 vagas")

        print("\n----Turmas por Ano de Ingresso----")
        for ano, total in contagem_anos.items():    
            print(f"Ano: {ano} {total} turma(s)")