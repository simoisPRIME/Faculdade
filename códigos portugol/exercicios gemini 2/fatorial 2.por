programa
{
	
	funcao inicio()
	{
		real fatorial, soma, termo
		inteiro cont

		soma = 0.0
		fatorial = 1.0

		para(cont = 1; cont <= 15; cont ++) {
			fatorial = fatorial * cont
			termo = cont / fatorial
			soma = soma + termo
		}
		escreva(soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 260; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */