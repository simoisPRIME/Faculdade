package br.ufmt.ic.poo.heranca;

import br.ufmt.ic.poo.classes.Personagem;
import br.ufmt.ic.poo.classes.Pirata;
import br.ufmt.ic.poo.classes.Cavaleiro;
import br.ufmt.ic.poo.classes.Feiticeiro;
import br.ufmt.ic.poo.classes.Arqueiro;

import java.util.Scanner;
import java.util.ArrayList;
import java.util.List;

public class HerancaSobrescrita {
    private static Scanner entrada = new Scanner(System.in);
    private static List<Personagem> personagens = new ArrayList<>();
    
    private static int lerInt() {
        while (!entrada.hasNextInt()) {
            System.out.print("Digite um numero valido: ");
            entrada.next();
        }
        int valor = entrada.nextInt();
        entrada.nextLine();
        return valor;
    }

    private static String lerString() {
        return entrada.nextLine().trim();
    }

    public static void listarPersonagens() {
        if (personagens.isEmpty()) {
            System.out.println("ERRO: Nenhum personagem criado ainda!\n");
        } else {
        System.out.println("\n=============LISTA DE PERSONAGENS CRIADOS=============");
        for (int i = 0; i < personagens.size(); i++) {
            System.out.println((i + 1) + ": " + personagens.get(i).getNome() + " | Classe: " + personagens.get(i).getTipo());
        }
            System.out.println();
        }
    }
    
    public static void batalhar() {
        if (personagens.size() < 2) {
            System.out.println("ERRO: E necessario no minimo 2 personagens criados para batalhar!\n");
            return;
        } 
        
        listarPersonagens();
        
        System.out.print("Indice do Personagem 1: ");
        int indice1 = lerInt();
        System.out.print("Indice do Personagem 2: ");
        int indice2 = lerInt();
        System.out.println();
        
        if (indice1 < 1 || indice1 > personagens.size() || indice2 < 1 || indice2 > personagens.size()) {
            System.out.println("ERRO: Indice errado!\n");
            return;
        }

        Personagem p1 = personagens.get(indice1 - 1);
        Personagem p2 = personagens.get(indice2 - 1);

        int ataqueA = p1.atacar();
        int ataqueB = p2.atacar();

        int defesaA = p1.defender();
        int defesaB = p2.defender();

        int danoA = ataqueA - defesaB;
        if (danoA < 0) { danoA = 0; }
        int danoB = ataqueB - defesaA;
        if (danoB < 0) { danoB = 0; }

        System.out.println(p1.getNome() + " -> Ataque: " + ataqueA + " | Defesa: " + defesaA + " | Dano causado: " + danoA);
        System.out.println(p2.getNome() + " -> Ataque: " + ataqueB + " | Defesa: " + defesaB + " | Dano causado: " + danoB);
        System.out.println("-----------------------------\n");

        if (danoA > danoB) {
            System.out.println(p1.getNome() + " e o Vencedor do duelo!\n");
        } else if (danoA < danoB) {
            System.out.println(p2.getNome() + " e o Vencedor do duelo!\n");
        } else {
            System.out.println("Empate!\n");
        }
       
    }

    public static void cadastrar(String classe, List<Personagem> lista) {
        System.out.println("CLASSE " + classe.toUpperCase());
        System.out.print("Nome: ");
        String nome = lerString();
        System.out.print("Vida (0-100): ");
        int vida = lerInt();
        System.out.print("Inteligencia (0-10): ");
        int inteligencia = lerInt();
        System.out.print("Destreza (0-10): ");
        int destreza = lerInt();
        System.out.print("Forca (0-10): ");
        int forca = lerInt();
        System.out.print("Agilidade (0-10): ");
        int agilidade = lerInt();
        System.out.print("Sorte (0-10): ");
        int sorte = lerInt();

        if (classe.equals("cavaleiro")) {
            System.out.print("Impeto (0-5): ");
            int impeto = lerInt();
            System.out.print("Coragem (0-5): ");
            int coragem = lerInt();
            lista.add(new Cavaleiro(nome, vida, "Cavaleiro", inteligencia, destreza, forca, agilidade, sorte, impeto, coragem));

        } else if (classe.equals("pirata")) {
            System.out.print("Impeto (0-5): ");
            int impeto = lerInt();
            System.out.print("Astucia (0-5): ");
            int astucia = lerInt();
            lista.add(new Pirata(nome, vida, "Pirata", inteligencia, destreza, forca, agilidade, sorte, impeto, astucia));

        } else if (classe.equals("feiticeiro")) {
            System.out.print("Mana (0-5): ");
            int mana = lerInt();
            System.out.print("Poder Arcano (0-5): ");
            int poderArcano = lerInt();
            lista.add(new Feiticeiro(nome, vida, "Feiticeiro", inteligencia, destreza, forca, agilidade, sorte, mana, poderArcano));

        } else if (classe.equals("arqueiro")) {
            System.out.print("Mana (0-5): ");
            int mana = lerInt();
            System.out.print("Precisao (0-5): ");
            int precisao = lerInt();
            lista.add(new Arqueiro(nome, vida, "Arqueiro", inteligencia, destreza, forca, agilidade, sorte, mana, precisao));
        }

        System.out.println("Personagem criado com sucesso!\n");
    }

    public static void main(String[] args) {

        while (true) {
            System.out.println("=============MENU PRINCIPAL=============");
            System.out.println("1 - Cadastrar Personagem");
            System.out.println("2 - Listar Personagens Criados");
            System.out.println("3 - Batalhar!");
            System.out.println("4 - Sair");
            System.out.print("\nDigite o operador: ");
            String operador = lerString();

            if (operador.equals("1")) {
                System.out.println("\n=============CLASSES=============");
                System.out.println("CAVALEIRO | PIRATA | ARQUEIRO | FEITICEIRO");
                System.out.print("Digite sua classe: ");
                String classe = lerString().toLowerCase();
                if (!classe.equals("cavaleiro") && !classe.equals("pirata") && !classe.equals("feiticeiro") && !classe.equals("arqueiro")) {
                    System.out.println("ERRO: Classe invalida!\n");
                } else {
                    cadastrar(classe, personagens);
                }

            } else if (operador.equals("2")) {
                listarPersonagens();

            } else if (operador.equals("3")) {
                batalhar();
                
            } else if (operador.equals("4")) {
                System.out.println("Saindo...\n");
                break;

            } else {
                System.out.println("ERRO: Operador invalido!\n");
            }
        }
    }
}