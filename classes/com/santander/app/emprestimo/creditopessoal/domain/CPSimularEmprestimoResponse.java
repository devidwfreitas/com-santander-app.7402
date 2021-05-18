package com.santander.app.emprestimo.creditopessoal.domain;

import com.santander.app.contacorrente.domain.Conta;
import gnb;
import hxm;
import hxv;
import hyx;
import java.io.Serializable;
import naj;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class CPSimularEmprestimoResponse extends gnb implements CPContratacao, hxm, hxv, Serializable {
  @Element(required = false)
  protected String bancoAgenciaContrUG;
  
  @Element(required = false)
  protected String codigoCliente;
  
  @Element(required = false)
  protected String codigoProduto;
  
  @Element(required = false)
  protected String codigoRetorno;
  
  @Element(required = false)
  protected String codigoSubProduto;
  
  @Element(required = false)
  protected String codigoTarifa;
  
  @Element(required = false)
  protected String codigoTransacao;
  
  protected CPConsultarLimiteResponse consultarLimiteResponse;
  
  protected Conta conta;
  
  @Element(required = false)
  protected String dataAprovacaoLimite;
  
  @Element(required = false)
  protected String dataContabil;
  
  @Element(required = false)
  protected String dataOferta;
  
  @Element(required = false)
  protected String dataPrimeiroVencimento;
  
  @Element(required = false)
  protected String dataSolicitacao;
  
  @Element(required = false)
  protected String dataUltimoVencimento;
  
  @Element(required = false)
  protected String diaDebitoFinanceiro;
  
  protected String diaPagamentoSelecionado;
  
  @Element(required = false)
  protected String horaSolicitacao;
  
  @Element(required = false)
  protected String idSolicitacao;
  
  @Element(required = false)
  protected String idTransacaoPositiva;
  
  @Element(required = false)
  protected String idTransacaoVendedora;
  
  @Element(required = false)
  protected String idadeMaxSeguro;
  
  @Element(required = false)
  protected String idadeMinSeguro;
  
  @Element(required = false)
  protected String identificacaoNovoPrazo;
  
  @Element(required = false)
  protected String indFluxoProduto;
  
  @Element(required = false)
  protected CPInformacaoParcelaResponse informacaoParcela;
  
  @Element(required = false)
  protected String mensagemRetorno;
  
  @Element(required = false)
  protected String numeroControle;
  
  @Element(required = false)
  protected String porcetPremioSeguro;
  
  @Element(required = false)
  protected String porcetValorIof;
  
  @Element(required = false)
  protected String porcetValorLiberado;
  
  @Element(required = false)
  protected String porcetValorTotalDevido;
  
  @Element(required = false)
  protected String quantidadeParcelas;
  
  @Element(required = false)
  protected String quantidadePrazoMax;
  
  @Element(required = false)
  protected String quantidadePrazoMin;
  
  @Element(required = false)
  protected String taxaCETAno;
  
  @Element(required = false)
  protected String taxaCETMes;
  
  @Element(required = false)
  protected String taxaInadiplencia;
  
  @Element(required = false)
  protected String taxaJurosAno;
  
  @Element(required = false)
  protected String taxaJurosMes;
  
  @Element(required = false)
  protected String taxaMora;
  
  @Element(required = false)
  protected String telaAlternativa;
  
  @Element(required = false)
  protected String tipoSeguro;
  
  @Element(required = false)
  protected String tipoTaxa;
  
  @Element(required = false)
  protected String valorCPMF;
  
  @Element(required = false)
  protected String valorCoberturaSeguro;
  
  @Element(required = false)
  protected String valorComissaoDisponivelLimite;
  
  @Element(required = false)
  protected String valorDesejado;
  
  @Element(required = false)
  protected String valorDespesa;
  
  @Element(required = false)
  protected String valorDisponivel;
  
  @Element(required = false)
  protected String valorIOF;
  
  @Element(required = false)
  protected String valorIOFSemSeguro;
  
  @Element(required = false)
  String valorLimiteRisco;
  
  @Element(required = false)
  protected String valorMinimoOperacao;
  
  @Element(required = false)
  protected String valorMinimoParcela;
  
  @Element(required = false)
  protected String valorParcela;
  
  @Element(required = false)
  protected String valorParcelaSemSeguro;
  
  @Element(required = false)
  protected String valorPremioSeguro;
  
  @Element(required = false)
  protected String valorSaldoLiquido;
  
  @Element(required = false)
  protected String valorTME;
  
  @Element(required = false)
  protected String valorTarifaContratacao;
  
  @Element(required = false)
  protected String valorTotalComEncargos;
  
  @Element(required = false)
  protected String valorTotalFinanciamento;
  
  @Element(required = false)
  protected String valorTotalFinanciamentoSemSeguro;
  
  @Element(required = false)
  protected String valorTotalTMESemSeguro;
  
  @Element(required = false)
  protected String valorTroco;
  
  @Element(required = false)
  protected String valorTrocoMaximo;
  
  @Element(required = false)
  protected String valorTrocoMinimo;
  
  private String getTaxaCETFormatted(boolean paramBoolean) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(getTaxaCETMes());
    stringBuilder.append(" a.m. ");
    if (paramBoolean)
      stringBuilder.append("\n"); 
    stringBuilder.append(getTaxaCETAno());
    stringBuilder.append(" a.a.");
    return stringBuilder.toString();
  }
  
  public String getAutenticacaoBancaria() {
    return "";
  }
  
  public String getCodigoRetorno() {
    return this.codigoRetorno;
  }
  
  public Conta getConta() {
    return this.conta;
  }
  
  public String getDataHoraSolicitacao() {
    return this.dataSolicitacao.replace(".", "/") + " - " + this.horaSolicitacao;
  }
  
  public String getDiaPagamentoFormatted() {
    return getDiaPagamentoSelecionado();
  }
  
  public String getDiaPagamentoSelecionado() {
    return this.diaPagamentoSelecionado;
  }
  
  public String getFontePagadoraFormatted() {
    return "";
  }
  
  public String getIof() {
    return this.informacaoParcela.getValorIOF();
  }
  
  public String getIofFormatted() {
    return naj.f(getIof());
  }
  
  public String getIofPercentageFormatted() {
    return String.format("%.2f", new Object[] { Float.valueOf(hyx.a(this.porcetValorIof, 0)) }) + "%";
  }
  
  public String getJurosMoratorioFormatted() {
    return "";
  }
  
  public String getLiberadoPercentageFormatted() {
    return String.format("%.2f", new Object[] { Float.valueOf(hyx.a(this.porcetValorLiberado, 0)) }) + "%";
  }
  
  public String getMensagemRetorno() {
    return this.mensagemRetorno;
  }
  
  public String getMessageError() {
    return "";
  }
  
  public String getMultaMoratorioFormatted() {
    return "";
  }
  
  public String getNumeroContratoFormatted() {
    return "";
  }
  
  public int getParcela() {
    try {
      return Integer.parseInt(this.informacaoParcela.getQuantidadeParcela());
    } catch (Exception exception) {
      return 0;
    } 
  }
  
  public String getParcelaFormatted() {
    return getParcela() + "x";
  }
  
  public int getParcelaMax() {
    return Integer.parseInt(this.informacaoParcela.getQuantidadePrazoMax());
  }
  
  public int getParcelaMin() {
    return Integer.parseInt(this.informacaoParcela.getQuantidadePrazoMin());
  }
  
  public String getSeguroPercentageFormatted() {
    return String.format("%.2f", new Object[] { Float.valueOf(hyx.a(this.porcetPremioSeguro, 0)) }) + "%";
  }
  
  public String getTaxaCETAno() {
    return hyx.a("%.2f", new Object[] { Float.valueOf(hyx.b(this.informacaoParcela.getTaxaCETAno())) }) + "%";
  }
  
  public String getTaxaCETBreakLineFormatted() {
    return getTaxaCETFormatted(true);
  }
  
  public String getTaxaCETFormatted() {
    return getTaxaCETFormatted(false);
  }
  
  public String getTaxaCETMes() {
    return hyx.a("%.2f", new Object[] { Float.valueOf(hyx.b(this.informacaoParcela.getTaxaCETMes())) }) + "%";
  }
  
  public String getTaxaJurosAno() {
    return hyx.a("%.2f", new Object[] { Float.valueOf(hyx.a(this.informacaoParcela.getTaxaJurosAno(), 6)) }) + "%";
  }
  
  public String getTaxaJurosBreakLineFormatted() {
    return getTaxaJurosFormatted(true);
  }
  
  public String getTaxaJurosFormatted() {
    return getTaxaJurosFormatted(false);
  }
  
  public String getTaxaJurosFormatted(boolean paramBoolean) {
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(getTaxaJurosMes());
    stringBuilder.append(" a.m. ");
    if (paramBoolean)
      stringBuilder.append("\n"); 
    stringBuilder.append(getTaxaJurosAno());
    stringBuilder.append(" a.a.");
    return stringBuilder.toString();
  }
  
  public String getTaxaJurosMes() {
    return hyx.a("%.2f", new Object[] { Float.valueOf(hyx.a(this.informacaoParcela.getTaxaJurosMes(), 6)) }) + "%";
  }
  
  public String getTaxaJurosMesCustomerFormatted() {
    return "";
  }
  
  public String getTipoTaxa() {
    return this.tipoTaxa;
  }
  
  public String getTotalPagarFormatted() {
    return "";
  }
  
  public String getTotalPercentageFormatted() {
    return String.format("%.2f", new Object[] { Float.valueOf(hyx.a(this.porcetValorTotalDevido, 0)) }) + "%";
  }
  
  public int getType() {
    return 10;
  }
  
  public int getTypeSecure() {
    return 2;
  }
  
  public String getUltimoVencimentoFormatted() {
    return this.informacaoParcela.getDataUltimoVencimento().replace(".", "/");
  }
  
  public String getValorEmprestimo() {
    return this.informacaoParcela.getValorEmprestimo();
  }
  
  public String getValorEmprestimoFormatted() {
    return naj.f(getValorEmprestimo());
  }
  
  public String getValorEntregueFormatted() {
    return naj.f(getValorEmprestimo());
  }
  
  public float getValorLimiteMax() {
    return this.consultarLimiteResponse.getValorLimiteMax();
  }
  
  public float getValorLimiteMin() {
    return this.consultarLimiteResponse.getValorLimiteMin();
  }
  
  public float getValorParcela() {
    try {
      return hyx.b(this.informacaoParcela.getValorParcela());
    } catch (Exception exception) {
      return 0.0F;
    } 
  }
  
  public String getValorParcelaFormatted() {
    return hyx.b().format(getValorParcela());
  }
  
  public String getValorParcelaSemSeguro() {
    return naj.f(this.informacaoParcela.getValorParcelaSemSeguro());
  }
  
  public String getValorPremioSeguro() {
    return this.informacaoParcela.getValorPremioSeguro();
  }
  
  public float getValorPremioSeguroCP() {
    return 0.0F;
  }
  
  public String getValorPremioSeguroFormatted() {
    return naj.f(getValorPremioSeguro());
  }
  
  public float getValorPremioSeguroPrestamista() {
    return 0.0F;
  }
  
  public String getValorTotalComEncargosFormatted() {
    return naj.f(this.informacaoParcela.getValorTotalFinanciamento());
  }
  
  public String getValorTotalContractsFormatted() {
    return "";
  }
  
  public String getValorTotalRefinFormatted() {
    return "";
  }
  
  public String getVencimento() {
    return this.informacaoParcela.getDataPrimeiroVencimento();
  }
  
  public String getVencimentoFormatted() {
    return getVencimento().replace(".", "/");
  }
  
  public boolean isRefinanciamento() {
    return false;
  }
  
  public boolean isTelaAlternativa() {
    return (this.telaAlternativa != null && this.telaAlternativa.equalsIgnoreCase("A"));
  }
  
  public CPSimularEmprestimoResponse setConsultarLimiteResponse(CPConsultarLimiteResponse paramCPConsultarLimiteResponse) {
    this.consultarLimiteResponse = paramCPConsultarLimiteResponse;
    return this;
  }
  
  public CPSimularEmprestimoResponse setConta(Conta paramConta) {
    this.conta = paramConta;
    return this;
  }
  
  public CPSimularEmprestimoResponse setDiaPagamentoSelecionado(int paramInt) {
    this.diaPagamentoSelecionado = String.valueOf(paramInt);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\CPSimularEmprestimoResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */