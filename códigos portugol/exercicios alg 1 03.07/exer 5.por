programa
{
	
	funcao inicio()
	{
		real gasolina, etanol

		escreva("Preço do álcool: ")
		leia(etanol)

		escreva("Preço da gasolina: ")
		leia(gasolina)

		se(15 / gasolina < 10 / etanol) {
			escreva("Nestes preços, o etanol compensa mais")
			
		} senao se(15 / gasolina > 10 / etanol) {
			escreva("Nestes preços, a gasolina compensa mais")
			
		} senao {
			escreva("Rendimento igual")
		}
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