programa
{
	
	funcao inicio()
	{
		inteiro chute, tentativas, numero

		numero = 23

		escreva("Tente adivinhar o número secreto: ")
		leia(chute)

		tentativas = 1

		enquanto(chute != numero) {
			se(chute > numero) {
				escreva("Muito alto")
			
				
			} senao {
				escreva("Muito baixo")
			
			}
			escreva("\nTente adivinhar o número secreto: ")
			leia(chute)
			tentativas = tentativas + 1
		}
		escreva("Você adivinhou em ", tentativas, " tentativas")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */