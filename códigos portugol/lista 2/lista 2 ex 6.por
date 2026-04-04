programa
{
	
	funcao inicio()
	{
		inteiro ouro1, ouro2, ouro3, prata1, prata2, prata3, bronze1, bronze2, bronze3, c1, c2, c3 // classificacao_1 = c1
		cadeia pais1, pais2, pais3

		escreva("Insira o nome do país: " )
		leia(pais1)

		escreva("Agora insira a quantidade de medalhas de ouro, bronze e prata desse páis respectivamente: ")
		leia(ouro1, prata1, bronze1)

		c1 = (ouro1 * 3) + (prata1 * 2) + bronze1

		escreva("Insira o nome do segundo país: " )
		leia(pais2)

		escreva("Agora insira a quantidade de medalhas de ouro, bronze e prata desse país respectivamente: ")
		leia(ouro2, prata2, bronze2)
		
		c2 = (ouro2 * 3) + (prata2 * 2) + bronze2

		escreva("Insira o nome do terceiro país: " )
		leia(pais3)

		escreva("Agora insira a quantidade de medalhas de ouro, bronze e prata desse país respectivamente: ")
		leia(ouro3, prata3, bronze3)
		
		c3 = (ouro3 * 3) + (prata3 * 2) + bronze3

		se(c1>=c2 e c2>=c3) {
			escreva("Em primeiro lugar: ", pais1, "\nEm segundo lugar: ", pais2, "\nEm terceiro lugar: ", pais3)
			
			}senao se(c1>=c3 e c3>=c2) {
				escreva("Em primeiro lugar: ", pais1, "\nEm segundo lugar: ", pais3, "\nEm terceiro lugar: ", pais2)
			
				}senao se(c2>=c1 e c1>=c3) {
					escreva("Em primeiro lugar: ", pais2, "\nEm segundo lugar: ", pais1, "\nEm terceiro lugar: ", pais3)
			
					}senao se(c2>=c3 e c3>=c1) {
						escreva("Em primeiro lugar: ", pais2, "\nEm segundo lugar: ", pais3, "\nEm terceiro lugar: ", pais1)
			
						}senao se(c3>=c2 e c2>=c1) {
							escreva("Em primeiro lugar: ", pais3, "\nEm segundo lugar: " ,pais2, "\nEm terceiro lugar: ", pais1)
			
							}senao{
								escreva("Em primeiro lugar: ", pais3, "\nEm segundo lugar: ", pais1, "\nEm terceiro lugar: ", pais2)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1747; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */