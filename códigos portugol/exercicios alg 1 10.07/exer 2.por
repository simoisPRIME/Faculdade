programa
{
	
	funcao inicio()
	{
		cadeia sexo
		real altura, media, maior = 0.0, menor = 0.0, soma
		inteiro contador, homens, mulheres

		homens = 0
		mulheres = 0
		soma = 0.0
		contador = 1
		
		enquanto(contador <= 5) {
			escreva("Insira sua altura: ")
			leia(altura)
			escreva("Insira seu sexo (m: masculino, f: feminino): ")
			leia(sexo)

			se(sexo == "m") {
				homens += 1
				
			} senao {
				se(sexo == "f") {
					mulheres += 1
					soma = soma + altura
				}
			}
			
			se(contador == 1) {
				maior = altura
				menor = altura
			} senao {
				se(altura > maior) {
					maior = altura
					
				} se(altura < menor) {
					menor = altura

					}
				
				}
				contador += 1	
			}
			
		se(mulheres <= 0) {
			escreva("Não foram inseridos dados de mulheres")
			
		}senao {
			media = soma / mulheres
			escreva("A média de altura das mulheres é: ", media)
		}

		escreva("\nA quantidade de homens é: ", homens)
		escreva("\nA menor altura das mulheres é: ", menor)
		escreva("\nA maior altura das mulheres é: ", maior)
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 732; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */