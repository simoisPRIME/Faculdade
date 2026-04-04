programa
{
	
	funcao inicio()
	{
		inteiro num1, num2
		cadeia simbolo

		escreva("Digite dois algarismos: ")
		leia(num1, num2)

		escreva("Escreva o símbolo da operação: ")
		leia(simbolo)

		se(simbolo == "+") {
			escreva("A soma de ", num1, " + ", num2, " é ", num1 + num2)
		}

		senao se (simbolo == "-") {
			escreva("A subtração de ", num1, " - ", num2, " é ", num1 - num2)
		}

		senao se(simbolo == "*") {
			escreva("A multiplicação de ", num1, " * ", num2, " é ", num1 * num2)
		}

		senao se(simbolo == "/") {
			se(num2 != 0) {
				escreva("A divisão de ", num1, " / ", num2, " é ", num1 / num2)
				
			}senao {
				escreva("A divisão é impossível")
			}
		}
		senao {
			escreva("Símbolo de operação inválido")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 732; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */