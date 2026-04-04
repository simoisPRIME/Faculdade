programa
{
	
	funcao inicio()
	{
		inteiro  sinal
		real soma, termo, den

		soma = 0.0
		sinal = 1
		den = 1.0

		enquanto(4 / den >= 0.0001) {
			termo = 4 / den
			soma = soma + termo * sinal
			den = den + 2
			sinal = sinal * -1
		}
		escreva("O valor de pi aproximado é: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 194; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */