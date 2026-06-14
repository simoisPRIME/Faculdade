package classePrincipal;

import demaisClasses.Aluno;
import demaisClasses.Campus;
import demaisClasses.Curso;
import demaisClasses.Professor;
import java.util.Scanner;

//campus curso professor aluno

public class main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        Campus campus = new Campus();
        System.out.print("Nome do Campus: ");
        campus.setNome(sc.nextLine());
        
        Curso curso = new Curso();
        System.out.print("Nome do curso: ");
        curso.setNome(sc.nextLine());
        System.out.print("Codigo do curso: ");
        curso.setCod(sc.next());
        sc.nextLine(); //limpar buffer
        
        curso.setNomeCampus(campus); //atribuir campus criado ao campus do curso
        
        Professor professor = new Professor();
        System.out.print("Nome do professor: ");
        professor.setNome(sc.nextLine());
        System.out.print("Titulacao do professor: ");
        professor.setTitulacao(sc.nextLine());
        
        Aluno aluno = new Aluno();
        System.out.print("Nome do aluno: ");
        aluno.setNome(sc.nextLine());
        System.out.print("Rga do aluno: ");
        aluno.setRga(sc.next());
        sc.nextLine(); //limpar buffer
        
        aluno.setCurso(curso);
        aluno.setOrientador(professor);
        System.out.println("");
        aluno.exibirInformacoes();
    }
}