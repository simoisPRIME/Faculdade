programa
{
	
	funcao inicio()
	{
		inteiro a, b, c

		escreva("Informe a medida dos 3 lados do triângulo: ")
		leia(a,b,c)

		se(a + b > c e a + c > b e b + c > a) {
			se(a == b e b == c) {
				escreva("É possível montar um triângulo equilátero com essas medidas")
				
			}senao se( a == b ou b == c ou c == a) {
				escreva("É possível montar um triângulo isósceles com essas medidas")
				
			} senao {
				escreva("É possível montar um triângulo escaleno com essas medidas")
			}
			
		}
		senao {
			escreva("Não é possível montar um triângulo com essas medidas")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 316; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */