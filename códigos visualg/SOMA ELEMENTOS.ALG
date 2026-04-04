algoritmo "ex1 brinde"
var
    M: vetor[1..3, 1..3] de inteiro
    i,j,soma: inteiro
inicio

    para i <- 1 ate 3 faca
        para j <- 1 ate 3 faca
        escreva("Digite um número: ")
        leia(M[i,j])
        fimpara
    fimpara
    
    para i <- 1 ate 3 faca
        para j <- 1 ate 3 faca
        soma <- soma + M[i,j]
        fimpara
    fimpara
    
    escreva(soma)
    
fimalgoritmo