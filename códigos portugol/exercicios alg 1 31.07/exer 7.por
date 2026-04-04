programa
{
	
	funcao inicio()
	{
		real num, termo, soma
		inteiro cont

		num = 1000.0
		soma = 0.0
		
		para(cont = 1; cont <= 50; cont ++) {
			termo = num / cont

			se(cont % 2 == 0) {
				soma = soma - termo
			} senao {
				soma = soma + termo
			}

			num = num - 3
		}
		escreva("A soma dos primeiros 50 termos é: ", soma)
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