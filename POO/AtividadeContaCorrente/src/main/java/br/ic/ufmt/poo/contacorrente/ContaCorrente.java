package br.ic.ufmt.poo.contacorrente;

import br.ic.ufmt.poo.contacorrente.classes.Cliente;
import br.ic.ufmt.poo.contacorrente.classes.Conta;
import java.util.ArrayList;
import java.util.Scanner;

public class ContaCorrente {

    public static void main (String[] args) {
        ArrayList listaContas = new ArrayList();
        Scanner entrada = new Scanner(System.in);
        
        String opcao;
        
        while(opcao != "9") {
            System.out.println(""
                    + "1 - Cadastrar nova conta"
                    + "\n2 - Enviar Pix"
                    + "\n3 - Receber Pix"
                    + "\n4 - Mostrar Informações"
                    + "\n9 - Sair");
            
            opcao = entrada.nextLine();
            if (opcao == "1") {
                System.out.print("Digite seu nome: ");
                String nome = entrada.nextLine();
                
                System.out.println("Digite seu CPF: ");
                String cpf = entrada.nextLine();
                
                System.out.println("Digite seu RG");
                String rg = entrada.nextLine();
                
                System.out.println("Digite o numero da conta: ");
                String numConta = entrada.nextLine();
                
                Cliente cliente1 = new Cliente(nome, rg, cpf);
                
                Conta conta1 = new Conta(cliente1, numConta);
                
                System.out.println("Cliente cadastrado com sucesso!");
                
            } else if (opcao == "2") {
                 System.out.println("Digite o valor a ser enviado: ");
                 Double valor = entrada.nextDouble();
                 
                 System.out.println("Digite a chave pix: ");
                 Conta destino = 
                 
                }
        }
    }
}
