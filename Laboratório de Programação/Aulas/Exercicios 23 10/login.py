login = "arthur123"
senha = "as1010"

login_user = input("Digite o Login: ")
senha_user = input("Digite a Senha: ")

if(login == login_user and senha == senha_user):
    print("Autenticação realizada com sucesso")
elif(login != login_user and senha != senha_user):
    print("Credenciais inválidas")
elif(login != login_user):
    print("Login inexistente")
elif(senha != senha_user):
    print("Senha inexistente")

