programa
{
	
	funcao inicio()
	{
		cadeia senha, senhacerta

		senhacerta = "1234"

		escreva("Digite a senha: ")
		leia(senha)
		
		enquanto(senha != senhacerta) {
			escreva("Acesso Negado")
			escreva("\nDigite a senha: ")
			leia(senha)
			
		}
		
		escreva("Acesso Liberado")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 212; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */