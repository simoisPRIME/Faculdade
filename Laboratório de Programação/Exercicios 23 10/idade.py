dia_hoje = 12
mes_hoje = 11
ano_hoje = 2025

dia = int(input("Insira o seu dia de nascimento: "))
mes = int(input("Insira o seu mês (Em número) de nascimento: "))
ano = int(input("Insira o seu ano de nascimento: "))

data_valida = True

if (dia > 31 or dia <= 0):
    print("Dia inválido")
    data_valida = False
elif (mes > 12 or mes <= 0):
    print("Mês inválido")
    data_valida = False
elif (ano > ano_hoje):
    print("Ano inválido")
    data_valida = False
elif (mes == 4 or mes == 6 or mes == 9 or mes == 11) and dia > 30:
    print("Erro: Este mês tem no máximo 30 dias.")
    data_valida = False

if data_valida:
    idade = ano_hoje - ano

    fez_aniversario = False

    if mes_hoje > mes:
        fez_aniversario = True

    elif mes_hoje == mes:
        if dia_hoje > dia:
            fez_aniversario = True
    
    if not fez_aniversario:
        idade = idade - 1

    print(f"Sua idade é: {idade} anos.")

    if idade <= 3: # 0, 1, 2, 3
        classificacao = "bebê"
    elif idade <= 12: # 4 até 12
        classificacao = "criança"
    elif idade <= 17: # 13 até 17
        classificacao = "adolescente"
    elif idade <= 59: # 18 até 59
        classificacao = "adulto"
    else: # 60 ou mais
        classificacao = "idoso"
        
    print(f"Você se encaixa na categoria: {classificacao}")