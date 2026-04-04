programa
{
	
	funcao inicio()
	{
		real soma, num, den, termo
		inteiro cont, sinal

		den = 1.0
		num = 50.0
		sinal = 1
		soma = 0.0

		para(cont = 1; cont <= 20; cont ++) {
			termo = num / den
			soma = soma + termo * sinal
			den = den + 2
			num = num - 2
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
 * @POSICAO-CURSOR = 320; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */