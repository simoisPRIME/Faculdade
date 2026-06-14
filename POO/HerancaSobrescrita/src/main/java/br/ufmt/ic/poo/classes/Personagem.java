package br.ufmt.ic.poo.classes;

public class Personagem {
    protected String nome, tipo;
    protected int vida; // 0 a 100
    protected int inteligencia, destreza, forca, agilidade, sorte; //1 a 10
    
    public int atacar() {
        return this.forca + this.destreza;
    }
    
    public int defender() {
        return this.destreza + this.agilidade;
    }

    public String getNome() {
        return nome;
    }

    public int getVida() {
        return vida;
    }

    public int getInteligencia() {
        return inteligencia;
    }

    public int getDestreza() {
        return destreza;
    }

    public String getTipo() {
        return tipo;
    }

    public int getForca() {
        return forca;
    }

    public int getAgilidade() {
        return agilidade;
    }

    public int getSorte() {
        return sorte;
    }

    public Personagem(String nome, int vida, String tipo, int inteligencia, int destreza, int forca, int agilidade, int sorte) {
        this.nome = nome;
        this.vida = vida;
        this.tipo = tipo;
        this.inteligencia = inteligencia;
        this.destreza = destreza;
        this.forca = forca;
        this.agilidade = agilidade;
        this.sorte = sorte;
    }
}
