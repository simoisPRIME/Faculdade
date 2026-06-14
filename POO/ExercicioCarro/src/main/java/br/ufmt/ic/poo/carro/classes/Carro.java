package br.ufmt.ic.poo.carro.classes;

public class Carro {
    private String marca, modelo;
    private int ano;
    private Motor motor;
    private Freio freio;
    private Boolean ligado = false; //ligado False = desligado
    private Boolean movimento = false; //movimento False = parado
    private int velocidadeAtual = 0;
    private Boolean freando = false;
    private Boolean acelerando = false;
    
    public Carro(String marca, String modelo, int ano, String motor, String freio) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
        
        if (motor.equals("1.0")) {
            this.motor = new Motor(160, 20);
 
        } else if (motor.equals("1.6")) {
            this.motor = new Motor(220, 30);
            
        } else if (motor.equals("2.0")) {
            this.motor = new Motor(260, 40);
            
        } else {
            System.err.println("ERRO: Modelo de motor inexistente!");
            return;
        }
        
        if (freio.equals("tambor")) {
            this.freio = new Freio(20);
            
        } else if (freio.equals("disco")) {
            this.freio = new Freio(30);
            
        } else if(freio.equals("abs")) {
            this.freio = new Freio(40);
            
        } else {
            System.err.println("ERRO: Tipo de freio inexistente!");
            return;
        }
    }
    
    public void ligar() {
        if (ligado) {
            System.err.println("ERRO: Carro ja esta ligado!");
            
        } else {
            System.out.println("Dando partida...");
            ligado = true;
        }
    }
    
    public void desligar() {
        if (!ligado) { 
            System.err.println("ERRO: Carro ja esta desligado!");
            
        } else if (movimento){
            System.err.println("ERRO: Carro esta em movimento!");
            
        } else {
            ligado = false;
            System.out.println("Desligando o carro...");
            
        }
    }
    
    public void acelerar() {
        if (!ligado) {
            System.err.println("ERRO: Carro esta desligado!");
            return;
        }
        
        if (velocidadeAtual >= motor.getVelocidadeMax()) {
            System.err.println("ERRO: Velocidade maxima atingida!");
            velocidadeAtual = motor.getVelocidadeMax(); //limita o carro na velocidade MAX
            return;
        }
        
        freando = false;
        acelerando = true;
        
        velocidadeAtual += motor.getTaxaAceleracao();
        
        movimento = true;
        
        System.out.println("Acelerando! Velocidade anterior: " + (velocidadeAtual - motor.getTaxaAceleracao()) + "km/h" + " - Velocidade atual: " + velocidadeAtual + "km/h");
        if (velocidadeAtual.equals(motor.getVelocidadeMax())) {
            System.err.println("ATENCAO: VELOCIDADE MAXIMA ATINGIDA!");
        }
    }
    
    public void frear() {
        if(!ligado) {
            System.err.println("ERRO: Carro esta desligado!");
            return;
        }
        
        if(!movimento) {
            System.err.println("ERRO: Carro esta parado!");
            return;
        }
        
        acelerando = false;
        freando = true;
        
        velocidadeAtual -= freio.getTaxaFrenagem();
        
        if (velocidadeAtual < 0) {
            velocidadeAtual = 0;
            System.out.println("Carro totalmente freado!");
            movimento = false;
            
        } else {
            System.out.println("Freando! Velocidade anterior: " + (velocidadeAtual + freio.getTaxaFrenagem()) + "km/h" + " - Velocidade atual: " + velocidadeAtual + "km/h");
        }
        
    }
    
    public void status() {
        System.out.println("STATUS CARRO:");
        System.out.println(marca + " " + modelo);
        System.out.println("Ano: " + ano + "\n");
        if (ligado) {
            System.out.println("Carro esta ligado!");
            
        } else {
            System.out.println("Carro esta desligado!");
            
        }

        if (movimento && acelerando) {
            System.out.println("Carro esta em movimento e acelerando!");
            
        } else if (movimento && freando) {
            System.out.println("Carro esta em movimento e freando!");
            
        } else {
            System.out.println("Carro esta parado!");
            
        }
        
        System.out.println("Velocidade Atual: " + velocidadeAtual);
        System.out.println("Velocidade Maxima: " + motor.getVelocidadeMax());

    }

    public String getMarca() {
        return marca;
    }

    public String getModelo() {
        return modelo;
    }

    public int getAno() {
        return ano;
    }

    public Motor getMotor() {
        return motor;
    }

    public Freio getFreio() {
        return freio;
    }
   
}