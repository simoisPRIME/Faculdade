algoritmo "raizquadrada"
var
   raiz:vetor[1..15] de real
   n,i: inteiro
inicio
   para i <- 1 ate 15 faca
      escreva("Insira um número: ")
      leia(n)
      se n < 0 entao
          raiz[i] <- -1
      senao
          raiz[i] <- RaizQ(n)
      fimse

      escreval(raiz[i])
   fimpara

fimalgoritmo