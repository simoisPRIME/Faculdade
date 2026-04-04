algoritmo "quadrado perfeito"
var
    M: vetor[1..3, 1..3] de inteiro
    L: vetor[1..3] de inteiro
    C: vetor[1..3] de inteiro
    i,j,d: inteiro
inicio

    para i <- 1 ate 3 faca
        para j <- 1 ate 3 faca
        escreva("Digite um número: ")
        leia(M[i,j])
        fimpara
    fimpara

    para i <- 1 ate 3 faca
        para j <- 1 ate 3 faca
        L[i] <- L[i] + M[i,j]
        se(i = j) entao
            d <- d + M[i,j]
        fimse
        fimpara
    fimpara

    para i <- 1 ate 3 faca
        para j <- 1 ate 3 faca
        C[j] <- C[j] + M[i,j]
        fimpara
    fimpara
    
    se((C[J]= 15) e (L[i]= 15) e (d = 15)) entao
        escreva("Quadrado Perfeito")
    senao
        escreva("Não é um quadrado perfeito")
    fimse
    
fimalgoritmo