package br.ic.ufmt.poo.contacorrente.classes;

public class ContaEspecial extends Conta {
    
    private double limiteMax;
    private double limiteUtilizado;
    
    public ContaEspecial(Cliente cliente, String numConta, double limite) {
        super(cliente, numConta);
        this.limiteMax = limite;
        this.limiteUtilizado = 0.0;
    }
    
    @Override
    public void enviarPix(double valor, Conta destino){
        getInfo();
        if (saldo > valor) {
            super.enviarPix(valor, destino);
        } else {
            System.out.println("ERRO: Saldo Insuficiente");
        }
        
    }
    
    @override
    public void receberPix(double valor) {
        if
    }
}
