package br.ufmt.ic.poo.empresa.classes;

public class Vendedor extends Funcionario {
    
    private double comissao, totalVendas;
    
    @Override
    public double calcularSalario() {
        double totalSalario = this.getSalarioBase();
        totalSalario += this.totalVendas * this.comissao;
        return totalSalario;
    }

    public Vendedor(double comissao, double totalVendas) {
        this.comissao = comissao;
        this.totalVendas = totalVendas;
    }

    public double getComissao() {
        return comissao;
    }

    public void setComissao(double comissao) {
        this.comissao = comissao;
    }

    public double getTotalVendas() {
        return totalVendas;
    }

    public void setTotalVendas(double totalVendas) {
        this.totalVendas = totalVendas;
    }
}
