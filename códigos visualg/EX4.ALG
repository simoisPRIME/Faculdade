algoritmo "ex4"
var
   alt:vetor[1..50] de real
   cod: vetor[1..50] de inteiro
   i, cont: inteiro
   maior, media: real
   
inicio
   para i <- 1 ate 3 faca
      escreva("Escreva sua altura: ")
      leia(alt[i])
      escreva("Entre com o código do seu sexo (1 = homem, 2 = mulher)")
      leia(cod[i])
      
      se(alt[i] > maior) entao
         maior <- alt[i]
      fimse
      
      se(cod[i] = 2) entao
         media <- media + alt[i]
         cont <- cont + 1
      fimse
      
   fimpara
   media <- media / cont
   
   cont <- 0
   
   para i <- 1 ate 3 faca
      se(cod[i] = 2) e (alt[i] > media) entao
         cont <- cont + 1
      fimse
   fimpara
      
   escreval("A maior altura é: ", maior, " m")
   escreval("A média é: ", media)
   escreva("A quantidade de mulheres acima da média é: ", cont )
   
fimalgoritmo