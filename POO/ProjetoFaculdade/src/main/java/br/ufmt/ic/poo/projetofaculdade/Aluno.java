package br.ufmt.ic.poo.projetofaculdade;

class Aluno {
    
    String nome;
    String rga;
    Curso curso;
    Professor orientador;
    
    void exibirInformacoes() {
        System.out.println("-----Informacoes do Aluno-----");
        System.out.println("Nome: " + this.nome);
        System.out.println("RGA: " + this.rga);
        System.out.println("Curso: " + this.curso.nome);
        System.out.println("Codigo do Curso: " + this.curso.cod);
        System.out.println("Campus: " + this.curso.nome_campus.nome);
        System.out.println("Orientador: " + this.orientador.nome);
        System.out.println("Titulacao do orientador: " + this.orientador.titulacao);
    }
}
