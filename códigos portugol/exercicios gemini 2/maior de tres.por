programa
{
	
	funcao inicio()
	{
		inteiro num1, num2, num3

		escreva("Digite três números inteiros diferentes: ")
		leia(num1, num2, num3)

		se(num1 >= num2 e num1 >= num3) {
			escreva("O maior número dentre os 3 é: ", num1)
			
		}senao se(num2 >= num3 e num2 >= num1) {
			escreva("O maior número dentre os 3 é: ", num2)
			
		}senao {
			escreva("O maior número dentre os 3 é: ", num3)
			
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 267; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */