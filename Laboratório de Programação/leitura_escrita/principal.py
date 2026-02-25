#abrir
arquivo = open("dados.txt","r")

#ler
conteudo = arquivo.read()

#fechar
arquivo.close()

print(conteudo)