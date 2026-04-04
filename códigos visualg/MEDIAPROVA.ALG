algoritmo "mediaprova"
var
    N:vetor[1..3, 1..4] de real
    M:vetor[1..4] de real
    i,j: inteiro
    media: real
inicio

    para i <- 1 ate 3 faca
        para j <- 1 ate 4 faca
            escreva("Digite a nota da prova: ")
            leia(N[i,j])
            M[i] <- M[i] + N[i,j]
        fimpara
    fimpara
    
    para i <- 1 ate 3 faca
         escreval("Média do aluno", i, "=", M[i] /4 )
    fimpara

fimalgoritmo