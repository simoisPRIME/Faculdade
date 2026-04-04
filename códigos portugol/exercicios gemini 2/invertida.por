programa
{
	
	funcao inicio()
	{
		real den, soma, termo
		inteiro cont, sinal

		sinal = 1
		soma = 0.0
		den = 100.0
		termo = 0.0

		para(cont = 1; cont <= 30; cont ++) {
			termo = cont / den
			soma = soma + termo * sinal
			den = den - 1
			sinal = sinal * - 1
			
		}
		escreva(soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 271; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */