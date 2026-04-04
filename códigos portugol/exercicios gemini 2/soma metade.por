programa
{
	
	funcao inicio()
	{
		real termo, soma
		inteiro sinal

		sinal = 1
		termo = 1000.0
		soma = 0.0

		enquanto(termo > 1.0) {
			soma = soma + termo * sinal
			escreva("Somando ", (termo * sinal), " -> Soma atual: ", soma, "\n")
			termo = termo / 2
			sinal = sinal * -1
		}
		escreva("\nLaço parou")
		escreva("\nA soma é: ", soma)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 351; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */