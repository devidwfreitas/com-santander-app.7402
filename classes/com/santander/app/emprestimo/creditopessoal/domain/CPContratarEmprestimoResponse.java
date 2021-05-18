package com.santander.app.emprestimo.creditopessoal.domain;

import android.util.Base64;
import com.santander.app.contacorrente.domain.Conta;
import gnb;
import hyx;
import java.io.Serializable;
import java.text.ParseException;
import naf;
import naj;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class CPContratarEmprestimoResponse extends gnb implements CPContratacao, Serializable {
  @Element(required = false)
  private String codigoAgencia;
  
  @Element(required = false)
  private String codigoAutenticacaoBancaria;
  
  @Element(required = false)
  private String codigoCliente;
  
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String codigoSubProduto;
  
  @Element(required = false)
  private String contaCorrente;
  
  @Element(required = false)
  private String cpfCliente;
  
  @Element(required = false)
  private String dataContratacao;
  
  @Element(required = false)
  private String dataEfetivacao;
  
  @Element(required = false)
  private String dataPrimeiroVencimento;
  
  @Element(required = false)
  private String dataTransacao;
  
  @Element(required = false)
  private String dataUltimoVencimento;
  
  private naf encrypt = new naf();
  
  @Element(required = false)
  private String horaEfetivacao;
  
  @Element(required = false)
  private String horaTransacao;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  @Element(required = false)
  private String nomeCartorioAbreviado;
  
  @Element(required = false)
  private String nomeCliente;
  
  @Element(required = false)
  private String numeroCapitalizacao;
  
  @Element(required = false)
  private String numeroContrato;
  
  @Element(required = false)
  private String numeroRegistroCartorio;
  
  @Element(required = false)
  private String numeroSeguradora;
  
  @Element(required = false)
  private String quantidadeParcelas;
  
  @Element(required = false)
  private String quantidadeSorteios;
  
  @Element(required = false)
  private String referOper;
  
  @Element(required = false)
  private String taxaCETAno;
  
  @Element(required = false)
  private String taxaCETMes;
  
  @Element(required = false)
  private String taxaInadiplencia;
  
  @Element(required = false)
  private String taxaJurosAno;
  
  @Element(required = false)
  private String taxaJurosMes;
  
  @Element(required = false)
  private String taxaMora;
  
  @Element(required = false)
  private String tipoSeguro;
  
  @Element(required = false)
  private String tipoTaxa;
  
  @Element(required = false)
  private String valorCapitalSegurado;
  
  @Element(required = false)
  private String valorEmprestimo;
  
  @Element(required = false)
  private String valorEmprestimoEncargos;
  
  @Element(required = false)
  private String valorIOF;
  
  @Element(required = false)
  private String valorLancamento;
  
  @Element(required = false)
  private String valorParcela;
  
  @Element(required = false)
  private String valorPremioSeguro;
  
  @Element(required = false)
  private String valorSorteioMilhar;
  
  @Element(required = false)
  private String valorTarifaContrato;
  
  @Element(required = false)
  private String valorTotalFinanciado;
  
  private int getQuantidadeParcelasFormatted() {
    return Integer.valueOf(getQuantidadeParcelas()).intValue();
  }
  
  public String getAutenticacaoBancaria() {
    return this.codigoAutenticacaoBancaria;
  }
  
  public String getCodigoAgencia() {
    return (new naf()).c(Base64.decode(this.codigoAgencia, 0));
  }
  
  public String getCodigoProduto() {
    return this.codigoProduto;
  }
  
  public String getCodigoRetorno() {
    return this.codigoRetorno;
  }
  
  public String getCodigoSubProduto() {
    return this.codigoSubProduto;
  }
  
  public Conta getConta() {
    return null;
  }
  
  public String getContaCorrente() {
    return (new naf()).c(Base64.decode(this.contaCorrente, 0));
  }
  
  public String getDataContratacao() {
    return this.dataContratacao;
  }
  
  public String getDataEfetivacao() {
    return this.dataEfetivacao;
  }
  
  public String getDataHoraSolicitacao() {
    return getDataTransacao() + " - " + getHoraTransacao();
  }
  
  public String getDataPrimeiroVencimento() {
    return this.dataPrimeiroVencimento.replace(".", "/");
  }
  
  public String getDataTransacao() {
    return this.dataTransacao;
  }
  
  public String getDataUltimoVencimento() {
    return this.dataUltimoVencimento;
  }
  
  public String getDiaPagamentoFormatted() {
    try {
      int i = hyx.a(getDataPrimeiroVencimento(), "dd/MM/yyyy").get(5);
      return String.valueOf(i);
    } catch (ParseException parseException) {
      return "0";
    } 
  }
  
  public String getFontePagadoraFormatted() {
    return null;
  }
  
  public String getHoraTransacao() {
    return this.horaTransacao;
  }
  
  public String getIofFormatted() {
    try {
      return naj.f(getValorIOF());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public String getIofPercentageFormatted() {
    return null;
  }
  
  public String getJurosMoratorioFormatted() {
    return null;
  }
  
  public String getLiberadoPercentageFormatted() {
    return null;
  }
  
  public String getMensagemRetorno() {
    return this.mensagemRetorno;
  }
  
  public String getMessageError() {
    return getMensagemRetorno();
  }
  
  public String getMultaMoratorioFormatted() {
    return null;
  }
  
  public String getNomeCliente() {
    return (new naf()).c(Base64.decode(this.nomeCliente, 0));
  }
  
  public String getNumeroContrato() {
    return this.numeroContrato;
  }
  
  public String getNumeroContratoFormatted() {
    return getNumeroContrato();
  }
  
  public String getParcelaFormatted() {
    return String.valueOf(getQuantidadeParcelasFormatted()) + "x";
  }
  
  public String getQuantidadeParcelas() {
    return this.quantidadeParcelas;
  }
  
  public String getReferOper() {
    return this.referOper;
  }
  
  public String getSeguroPercentageFormatted() {
    return null;
  }
  
  public String getTaxaCETAno() {
    return String.format("%.2f", new Object[] { Float.valueOf(hyx.b(this.taxaCETAno)) }) + "%";
  }
  
  public String getTaxaCETBreakLineFormatted() {
    return null;
  }
  
  public String getTaxaCETFormatted() {
    return getTaxaCETMes() + " a.m " + getTaxaCETAno() + " a.a";
  }
  
  public String getTaxaCETMes() {
    return String.format("%.2f", new Object[] { Float.valueOf(hyx.b(this.taxaCETMes)) }) + "%";
  }
  
  public String getTaxaJurosAno() {
    return String.format("%.2f", new Object[] { Float.valueOf(hyx.a(this.taxaJurosAno, 6)) }) + "%";
  }
  
  public String getTaxaJurosBreakLineFormatted() {
    return null;
  }
  
  public String getTaxaJurosFormatted() {
    return getTaxaJurosMes() + " a.m. " + getTaxaJurosAno() + " a.a.";
  }
  
  public String getTaxaJurosFormatted(boolean paramBoolean) {
    return paramBoolean ? (getTaxaJurosMes() + " a.m.\n" + getTaxaJurosAno() + " a.a.") : (getTaxaJurosMes() + " a.m. " + getTaxaJurosAno() + " a.a.");
  }
  
  public String getTaxaJurosMes() {
    return String.format("%.2f", new Object[] { Float.valueOf(hyx.a(this.taxaJurosMes, 6)) }) + "%";
  }
  
  public String getTaxaJurosMesCustomerFormatted() {
    return null;
  }
  
  public String getTaxaMora() {
    return this.taxaMora;
  }
  
  public String getTipoSeguro() {
    return this.tipoSeguro;
  }
  
  public String getTipoTaxa() {
    return this.tipoTaxa;
  }
  
  public String getTotalPagarFormatted() {
    return null;
  }
  
  public String getTotalPercentageFormatted() {
    return null;
  }
  
  public int getType() {
    return 10;
  }
  
  public int getTypeSecure() {
    return 0;
  }
  
  public String getUltimoVencimentoFormatted() {
    try {
      int i = hyx.a(getDataUltimoVencimento(), "dd/MM/yyyy").get(5);
      return String.valueOf(i);
    } catch (ParseException parseException) {
      return "0";
    } 
  }
  
  public String getValorEmprestimo() {
    return this.valorEmprestimo;
  }
  
  public String getValorEmprestimoFormatted() {
    try {
      return naj.f(getValorEmprestimo());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public String getValorEntregueFormatted() {
    try {
      return naj.f(getValorEmprestimo());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public String getValorIOF() {
    return this.valorIOF;
  }
  
  public String getValorParcela() {
    return this.valorParcela;
  }
  
  public String getValorParcelaFormatted() {
    try {
      return naj.f(getValorParcela());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public String getValorPremioSeguro() {
    return this.valorPremioSeguro;
  }
  
  public float getValorPremioSeguroCP() {
    try {
      return Float.parseFloat(getValorPremioSeguro());
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getValorPremioSeguroFormatted() {
    try {
      return naj.f(getValorPremioSeguro());
    } catch (Exception exception) {
      return "0,00";
    } 
  }
  
  public float getValorPremioSeguroPrestamista() {
    return 0.0F;
  }
  
  public String getValorTotalComEncargosFormatted() {
    return null;
  }
  
  public String getValorTotalContractsFormatted() {
    return "";
  }
  
  public String getValorTotalRefinFormatted() {
    return "";
  }
  
  public String getVencimentoFormatted() {
    return getDataPrimeiroVencimento();
  }
  
  public boolean isRefinanciamento() {
    return false;
  }
  
  public void setCodigoAgencia(String paramString) {
    this.codigoAgencia = paramString;
  }
  
  public void setCodigoProduto(String paramString) {
    this.codigoProduto = paramString;
  }
  
  public void setCodigoRetorno(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public void setCodigoSubProduto(String paramString) {
    this.codigoSubProduto = paramString;
  }
  
  public void setContaCorrente(String paramString) {
    this.contaCorrente = paramString;
  }
  
  public void setDataContratacao(String paramString) {
    this.dataContratacao = paramString;
  }
  
  public void setDataEfetivacao(String paramString) {
    this.dataEfetivacao = paramString;
  }
  
  public void setDataPrimeiroVencimento(String paramString) {
    this.dataPrimeiroVencimento = paramString;
  }
  
  public void setDataTransacao(String paramString) {
    this.dataTransacao = paramString;
  }
  
  public void setDataUltimoVencimento(String paramString) {
    this.dataUltimoVencimento = paramString;
  }
  
  public void setHoraTransacao(String paramString) {
    this.horaTransacao = paramString;
  }
  
  public void setMensagemRetorno(String paramString) {
    this.mensagemRetorno = paramString;
  }
  
  public void setNomeCliente(String paramString) {
    this.nomeCliente = paramString;
  }
  
  public void setReferOper(String paramString) {
    this.referOper = paramString;
  }
  
  public void setTaxaMora(String paramString) {
    this.taxaMora = paramString;
  }
  
  public void setTipoSeguro(String paramString) {
    this.tipoSeguro = paramString;
  }
  
  public void setTipoTaxa(String paramString) {
    this.tipoTaxa = paramString;
  }
  
  public void setValorIOF(String paramString) {
    this.valorIOF = paramString;
  }
  
  public void setValorParcela(String paramString) {
    this.valorParcela = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\CPContratarEmprestimoResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */