programa
{
	
	funcao inicio()
	{
		inteiro kwh, preco_pago

		escreva("Quantos kwh foram usados: ")
		leia(kwh)

		se (kwh <= 50.0) {
			preco_pago = kwh * 1.0
		
		} senao se (kwh <= 100.0) {
			preco_pago = (kwh - 50.0) * 1.30 + 50.0

		} senao se (kwh <= 150.0) {
			preco_pago = (kwh - 100) * 1.60 + 115
			
		} senao{
			preco_pago = (kwh - 150) * 2.0 + 195
		
		}

		escreva("\nTotal a pagar: ", preco_pago)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 390; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */