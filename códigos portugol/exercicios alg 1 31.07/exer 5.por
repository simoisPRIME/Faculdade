programa
{
	
	funcao inicio()
	{
		real soma, numerador, denominador
		inteiro cont
		soma = 0.0

		para(cont = 1; cont <= 37; cont ++) 
		{
			numerador = (38.0 - cont) * (39.0 - cont)
			denominador = cont
			soma = soma + numerador / denominador
		}
		escreva("A soma é: ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 44; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */