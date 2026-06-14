package demaisClasses;

public class Aluno {
    
    private String nome, rga;
    private Curso curso;
    private Professor orientador;
    
    public String getNome() {
        return this.nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getRga() {
        return this.rga;
    }
    
    public void setRga(String rga) {
        this.rga = rga;
    }
    
    public Curso getCurso() {
        return this.curso;
    }
    
    public void setCurso(Curso curso) {
        this.curso = curso;
    }
    
    public Professor getOrientador() {
        return this.orientador;
    }
    
    public void setOrientador(Professor orientador) {
        this.orientador = orientador;
    }
    
    public void exibirInformacoes() {
        System.out.println("-----Informacoes do Aluno-----");
        System.out.println("Nome: " + this.nome);
        System.out.println("RGA: " + this.rga);
        System.out.println("Curso: " + this.curso.getNome());
        System.out.println("Codigo do Curso: " + this.curso.getCod());
        System.out.println("Campus: " + this.curso.getNomeCampus().getNome());
        System.out.println("Orientador: " + this.orientador.getNome());
        System.out.println("Titulacao do orientador: " + this.orientador.getTitulacao());
    }
}