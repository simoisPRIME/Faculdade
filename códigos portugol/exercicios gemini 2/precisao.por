programa
{
	
	funcao inicio()
	{
		real fatorial, soma, termo
		inteiro cont

		soma = 0.0
		fatorial = 1.0
		cont = 1

		enquanto(1 / fatorial > 0.00001) {
			fatorial = fatorial * cont
			termo = 1 / fatorial
			soma = soma + termo
			cont = cont + 1
			
		}
		escreva(soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 257; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */