package demaisClasses;

public class Curso {
    private Campus nome_campus;
    private String nome, cod;
    
    public Campus getNomeCampus() {
        return this.nome_campus;
    }
    
    public void setNomeCampus(Campus nome_campus) {
        this.nome_campus = nome_campus;
    }
    
    public String getNome() {
        return this.nome;
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getCod() {
        return this.cod;  
    }
    
    public void setCod(String cod) {
        this.cod = cod;
    }
       
}