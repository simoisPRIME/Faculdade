package br.ufmt.ic.poo.projetofaculdade;
import java.util.Scanner;

class ProjetoFaculdade {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in); // criei scanner pra ler os dados do user
        
        Aluno aluno = new Aluno(); // criar e ler todos os atributos da classe Aluno
        System.out.print("Nome do Aluno: "); //printa e le o nome do aluno
        aluno.nome = sc.nextLine();     
        System.out.print("RGA do Aluno: "); //printa e le o rga do aluno
        aluno.rga = sc.next();
        sc.nextLine(); // limpar buffer
        
        Curso curso = new Curso(); // criar e ler os atributos da classe Curso
        System.out.print("Curso do Aluno: "); //printa e le o curso do aluno
        curso.nome = sc.nextLine();     
        System.out.print("Codigo do Curso: "); //printa e le o código do curso
        curso.cod = sc.next();
        sc.nextLine(); // limpar buffer
        
        Campus campus = new Campus(); //'''' mesma coisa nos anteriores
        System.out.print("Nome do Campus: ");
        campus.nome = sc.nextLine();
        
        Professor professor = new Professor();
        System.out.print("Nome do professor: ");
        professor.nome = sc.nextLine();
        System.out.print("Titulacao do Professor: ");
        professor.titulacao = sc.nextLine();
        
        aluno.curso = curso;
        aluno.orientador = professor;
        aluno.curso.nome_campus = campus;
        
        System.out.println(); // quebra de linha antes de exibir as informações
        
        aluno.exibirInformacoes();
        
        sc.close();
    }
}


