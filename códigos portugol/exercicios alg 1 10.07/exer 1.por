programa
{
	
	funcao inicio()
	{
		inteiro contador, num_lido
		inteiro num_maior = 0
		inteiro num_menor = 0
		contador = 1
		
		enquanto(contador <= 10) {
			
			escreva("Digite o ", contador, "º valor: ")
			leia(num_lido)
			
			se(contador == 1) {
				num_maior = num_lido
				num_menor = num_lido
			} 
			senao {
				se(num_lido > num_maior) {
					num_maior = num_lido
					
				} se(num_lido < num_menor) {
					num_menor = num_lido
					
				}
			}
			contador = contador + 1
		}

		escreva("\nO maior número foi: ", num_maior, "\nO menor número foi: ", num_menor)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 124; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */