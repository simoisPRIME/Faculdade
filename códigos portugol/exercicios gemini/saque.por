programa
{
	
	funcao inicio()
	{
		inteiro nota100, nota50, nota20, nota10, nota5, nota2, saque, resto

		escreva("Insira o valor do saque: R$")
		leia(saque)

		se(saque % 2 != 0) {
			escreva("Valor inválido para saque")
			
		} senao {
			nota100 = saque / 100
			saque = saque % 100

			nota50 = saque / 50
			saque = saque % 50

			nota20 = saque / 20
			saque = saque % 20

			nota10 = saque / 10
			saque = saque % 10

			nota5 = 0

			se(saque % 2 != 0) {
				nota5 = 1
				saque = saque - 5
			}

			nota2 = saque / 2
			saque = saque % 2

			escreva("Você receberá:")
			
			se(nota100 > 0) {
			escreva("\n", nota100, " notas de R$100")
			 	
			}
			se(nota50 > 0) {
				escreva("\n", nota50, " notas de R$50")
			
			}
			se(nota20 > 0) {
				escreva("\n", nota20, " notas de R$20")
			
			}
			se(nota10 > 0) {
				escreva("\n", nota10, " notas de R$10")
			
			}
			se(nota5 > 0) {
				escreva("\n", nota5, " notas de R$5")
			
			}
			se(nota2 > 0) {
				escreva("\n", nota2, " notas de R$2")
			
			}
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 504; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */