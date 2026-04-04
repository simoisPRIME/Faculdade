programa
{
	
	funcao inicio()
	{
		real idade, dose_mg, gotas, peso

		escreva("Digite sua idade: ")
		leia(idade)

		escreva("Digite seu peso em quilos: ")
		leia(peso)

		se (idade >= 12) {
			se (peso >= 60.0) {
				dose_mg = 1000
				
			}senao {
				dose_mg = 875
			}
			
		}senao {
				se(peso >= 9.1 e peso <= 16.0){
					dose_mg = 250
		
				}senao se(peso >=16.1 e peso <= 24) {
					dose_mg = 375
		
				}senao {
					dose_mg = 750
			}
		}

		gotas = (dose_mg / 500) * 20

		escreva("Sua dosagem é ", gotas, " gotas")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 348; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */