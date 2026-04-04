programa
{
	
	funcao inicio()
	{
		inteiro par, impar, cont, n1, n2, inicio, fim
		inicio = 0
		fim = 0

		escreva("Escreva dois numeros inteiros positivos: ")
		leia(n1, n2)

		se(n1 > n2) {
			fim = n1
			inicio = n2
			
		}senao {
			inicio = n1
			fim = n2
		}

		para(cont = inicio; cont <= fim; cont ++) 
		{
			se(cont % 2 == 0) {
				escreva("\nOs números pares desse intervalo são: ", cont)
			}
			
		}
		
		para(cont = inicio; cont <= fim; cont ++)
		{
			se(cont % 2 == 1) {
				escreva("\nOs números ímpares desse intervalo são: ", cont)
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 409; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */