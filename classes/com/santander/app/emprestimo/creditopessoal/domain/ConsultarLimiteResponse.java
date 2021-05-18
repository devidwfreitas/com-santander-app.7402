package com.santander.app.emprestimo.creditopessoal.domain;

import gnb;
import hxv;
import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class ConsultarLimiteResponse extends gnb implements hxv, Serializable {
  @Element(required = false)
  private String bancoAgenciaContrUG;
  
  @Element(required = false)
  private String codigoCliente;
  
  @Element(required = false)
  private String codigoEvento;
  
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String codigoSubProduto;
  
  @Element(required = false)
  private String codigoTarifa;
  
  @Element(required = false)
  private String codigoTransacao;
  
  @Element(required = false)
  private String conta;
  
  @Element(required = false)
  private String dataAprovacaoLimite;
  
  @Element(required = false)
  private String dataContabil;
  
  @Element(required = false)
  private String dataOferta;
  
  @Element(required = false)
  private String dataPrimeiroVencimento;
  
  @Element(required = false)
  private String dataSolicitacao;
  
  @Element(required = false)
  private String dataUltimoVencimento;
  
  @Element(required = false)
  private String horaSolicitacao;
  
  @Element(required = false)
  private String idSolicitacao;
  
  @Element(required = false)
  private String idTransacaoPositiva;
  
  @Element(required = false)
  private String idTransacaoVendedora;
  
  @Element(required = false)
  private String idadeMaxSeguro;
  
  @Element(required = false)
  private String idadeMinSeguro;
  
  @Element(required = false)
  private String indFluxoProduto;
  
  @Element(required = false)
  private String mensagemRetorno;
  
  @Element(required = false)
  private String numeroControle;
  
  @Element(required = false)
  private String quantidadePrazoMax;
  
  @Element(required = false)
  private String quantidadePrazoMin;
  
  @Element(required = false)
  private String taxaCETAno;
  
  @Element(required = false)
  private String taxaCETMes;
  
  @Element(required = false)
  private String taxaJurosAno;
  
  @Element(required = false)
  private String taxaJurosMes;
  
  @Element(required = false)
  private String taxaMora;
  
  @Element(required = false)
  private String tipoTaxa;
  
  @Element(required = false)
  private String valorCPMF;
  
  @Element(required = false)
  private String valorCoberturaSeguro;
  
  @Element(required = false)
  private String valorComissaoDisponivelLimite;
  
  @Element(required = false)
  private String valorDesejado;
  
  @Element(required = false)
  private String valorDespesa;
  
  @Element(required = false)
  private String valorIOF;
  
  @Element(required = false)
  private String valorIOFSemSeguro;
  
  @Element(required = false)
  private String valorLimiteRisco;
  
  @Element(required = false)
  private String valorMinimoOperacao;
  
  @Element(required = false)
  private String valorMinimoParcela;
  
  @Element(required = false)
  private String valorParcelaSemSeguro;
  
  @Element(required = false)
  private String valorPremioSeguro;
  
  @Element(required = false)
  private String valorSaldoLiquido;
  
  @Element(required = false)
  private String valorTME;
  
  @Element(required = false)
  private String valorTarifaContratacao;
  
  @Element(required = false)
  private String valorTotalComEncargos;
  
  @Element(required = false)
  private String valorTotalFinanciamento;
  
  @Element(required = false)
  private String valorTotalFinanciamentoSemSeguro;
  
  @Element(required = false)
  private String valorTroco;
  
  @Element(required = false)
  private String valorTrocoMaximo;
  
  @Element(required = false)
  private String valorTrocoMinimo;
  
  public String getBancoAgenciaContrUG() {
    return this.bancoAgenciaContrUG;
  }
  
  public String getCodigoCliente() {
    return this.codigoCliente;
  }
  
  public String getCodigoEvento() {
    return this.codigoEvento;
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
  
  public String getCodigoTarifa() {
    return this.codigoTarifa;
  }
  
  public String getCodigoTransacao() {
    return this.codigoTransacao;
  }
  
  public String getConta() {
    return this.conta;
  }
  
  public String getDataAprovacaoLimite() {
    return this.dataAprovacaoLimite;
  }
  
  public String getDataContabil() {
    return this.dataContabil;
  }
  
  public String getDataOferta() {
    return this.dataOferta;
  }
  
  public String getDataPrimeiroVencimento() {
    return this.dataPrimeiroVencimento;
  }
  
  public String getDataSolicitacao() {
    return this.dataSolicitacao;
  }
  
  public String getDataUltimoVencimento() {
    return this.dataUltimoVencimento;
  }
  
  public String getHoraSolicitacao() {
    return this.horaSolicitacao;
  }
  
  public String getIdSolicitacao() {
    return this.idSolicitacao;
  }
  
  public String getIdTransacaoPositiva() {
    return this.idTransacaoPositiva;
  }
  
  public String getIdTransacaoVendedora() {
    return this.idTransacaoVendedora;
  }
  
  public String getIdadeMaxSeguro() {
    return this.idadeMaxSeguro;
  }
  
  public String getIdadeMinSeguro() {
    return this.idadeMinSeguro;
  }
  
  public String getIndFluxoProduto() {
    return this.indFluxoProduto;
  }
  
  public String getMensagemRetorno() {
    return this.mensagemRetorno;
  }
  
  public String getNumeroControle() {
    return this.numeroControle;
  }
  
  public String getQuantidadePrazoMax() {
    return this.quantidadePrazoMax;
  }
  
  public String getQuantidadePrazoMin() {
    return this.quantidadePrazoMin;
  }
  
  public String getTaxaCETAno() {
    return this.taxaCETAno;
  }
  
  public String getTaxaCETMes() {
    return this.taxaCETMes;
  }
  
  public String getTaxaJurosAno() {
    return this.taxaJurosAno;
  }
  
  public String getTaxaJurosMes() {
    return this.taxaJurosMes;
  }
  
  public String getTaxaMora() {
    return this.taxaMora;
  }
  
  public String getTipoTaxa() {
    return this.tipoTaxa;
  }
  
  public String getValorCPMF() {
    return this.valorCPMF;
  }
  
  public String getValorCoberturaSeguro() {
    return this.valorCoberturaSeguro;
  }
  
  public String getValorComissaoDisponivelLimite() {
    return this.valorComissaoDisponivelLimite;
  }
  
  public String getValorDesejado() {
    return this.valorDesejado;
  }
  
  public String getValorDespesa() {
    return this.valorDespesa;
  }
  
  public String getValorIOF() {
    return this.valorIOF;
  }
  
  public String getValorIOFSemSeguro() {
    return this.valorIOFSemSeguro;
  }
  
  public String getValorLimiteRisco() {
    return this.valorLimiteRisco;
  }
  
  public String getValorMinimoOperacao() {
    return this.valorMinimoOperacao;
  }
  
  public String getValorMinimoParcela() {
    return this.valorMinimoParcela;
  }
  
  public String getValorParcelaSemSeguro() {
    return this.valorParcelaSemSeguro;
  }
  
  public String getValorPremioSeguro() {
    return this.valorPremioSeguro;
  }
  
  public String getValorSaldoLiquido() {
    return this.valorSaldoLiquido;
  }
  
  public String getValorTME() {
    return this.valorTME;
  }
  
  public String getValorTarifaContratacao() {
    return this.valorTarifaContratacao;
  }
  
  public String getValorTotalComEncargos() {
    return this.valorTotalComEncargos;
  }
  
  public String getValorTotalFinanciamento() {
    return this.valorTotalFinanciamento;
  }
  
  public String getValorTotalFinanciamentoSemSeguro() {
    return this.valorTotalFinanciamentoSemSeguro;
  }
  
  public String getValorTroco() {
    return this.valorTroco;
  }
  
  public String getValorTrocoMaximo() {
    return this.valorTrocoMaximo;
  }
  
  public String getValorTrocoMinimo() {
    return this.valorTrocoMinimo;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\ConsultarLimiteResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */