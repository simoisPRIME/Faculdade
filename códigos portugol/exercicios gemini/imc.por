programa
{
	
	funcao inicio()
	{
		real peso, altura, imc

		escreva("Digite seu peso em quilos: ")
		leia(peso)

		escreva("Digite sua altura em metros: ")
		leia(altura)

		imc = peso / (altura * altura)

		se(imc < 18.5) {
			escreva("Você está abaixo do peso")
			
		} senao se(imc <= 24.9) {
			escreva("Você está no seu peso ideal")
			
		} senao se(imc <= 29.9) {
			escreva("Você está em sobrepeso")
			
		} senao {
			escreva("Você está obeso!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 457; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */