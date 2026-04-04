programa
{
	
	funcao inicio()
	{
		real media, nota1, nota2, frequencia

		escreva("Insira suas duas notas: ")
		leia(nota1, nota2)

		escreva("Insira sua frequência em porcentagem: ")
		leia(frequencia)

		media = (nota1 + nota2) / 2

		se(media >= 7 e frequencia >= 75) {
			escreva("Aprovado")
			
		} senao se(media < 7 e frequencia >= 75) {
			escreva("Reprovado por nota")
			
		} senao se(media >= 7 e frequencia < 75) {
			escreva("Reprovado por frequência")
			
		} senao {
			escreva("Reprovado por nota e por frequência")
			
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 429; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */