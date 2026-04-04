programa
{
	
	funcao inicio()
	{
		inteiro a, b, c, nulo, cont
		cadeia voto

		a = 0
		b = 0
		c = 0
		nulo = 0

		escreva("Digite seu voto ('a', 'b', 'c', 'nulo') ou '0' para terminar: ")
		leia(voto)
		
		enquanto(voto != "0") 
		{
			se(voto == "a") {
				a = a + 1
			} 
			senao se(voto == "b") {
				b = b + 1
			}
			senao se(voto == "c") {
				c = c + 1
			}
			senao se(voto == "nulo") {
				nulo = nulo + 1
			}

			escreva("Digite seu voto ('a', 'b', 'c', 'nulo') ou '0' para terminar: ")
			leia(voto)
		}
		escreva("Resultado das eleições:")
		escreva("\nCandidato A: ", a, " votos")
		escreva("\nCandidato B: ", b, " votos")
		escreva("\nCandidato C: ", c, " votos")
		escreva("\nNulo: ", nulo, " votos")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */