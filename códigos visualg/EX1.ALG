algoritmo "ex1"
var
   n: vetor[1..10] de inteiro
   i: inteiro
   par, impar: inteiro

inicio
   par <- 0
   impar <- 0
   para i<- 1 ate 10 faca
      escreva("Entre com o número: ")
      leia(n[i])
      
      se(n[i] mod 2 = 0) entao
         par <- par + n[i]
      senao
         impar <- impar + n[i]
      fimse
      
   fimpara
   escreval("Soma dos números pares: ", par)
   escreva("Soma dos números impares: ", impar)
fimalgoritmo