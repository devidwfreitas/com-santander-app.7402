package com.santander.app.emprestimo.creditopessoal.domain;

import com.santander.app.contacorrente.domain.Conta;
import gnb;
import hxm;
import hxv;
import hyx;
import java.io.Serializable;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class CPConsultarLimiteResponse extends gnb implements hxm, hxv, Serializable {
  @Element(required = false)
  protected String bancoAgenciaContrUG;
  
  @Element(required = false)
  protected String codigoCliente;
  
  @Element(required = false)
  protected String codigoEvento;
  
  @Element(required = false)
  protected String codigoProduto;
  
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  protected String codigoSubProduto;
  
  @Element(required = false)
  protected String codigoTarifa;
  
  @Element(required = false)
  protected String codigoTransacao;
  
  @Element(required = false)
  protected String conta;
  
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
  protected String indFluxoProduto;
  
  @Element(required = false)
  protected String mensagemRetorno;
  
  @Element(required = false)
  protected String numeroControle;
  
  @Element(required = false)
  protected String quantidadePrazoMax;
  
  @Element(required = false)
  protected String quantidadePrazoMin;
  
  @Element(required = false)
  protected String taxaCETAno;
  
  @Element(required = false)
  protected String taxaCETMes;
  
  @Element(required = false)
  protected String taxaJurosAno;
  
  @Element(required = false)
  protected String taxaJurosMes;
  
  @Element(required = false)
  protected String taxaMora;
  
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
  protected String valorIOF;
  
  @Element(required = false)
  protected String valorIOFSemSeguro;
  
  @Element(required = false)
  protected String valorLimiteRisco;
  
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
  protected String valorTroco;
  
  @Element(required = false)
  protected String valorTrocoMaximo;
  
  @Element(required = false)
  protected String valorTrocoMinimo;
  
  public String getCodigoRetorno() {
    return this.codigoRetorno;
  }
  
  public Conta getConta() {
    return null;
  }
  
  public String getDiaPagamentoSelecionado() {
    return null;
  }
  
  public String getIof() {
    return null;
  }
  
  public String getMensagemRetorno() {
    return this.mensagemRetorno;
  }
  
  public int getParcela() {
    return 0;
  }
  
  public String getParcelaFormatted() {
    return null;
  }
  
  public int getParcelaMax() {
    return 0;
  }
  
  public int getParcelaMin() {
    return 0;
  }
  
  public String getTaxaCETAno() {
    return null;
  }
  
  public String getTaxaCETMes() {
    return null;
  }
  
  public String getTaxaJurosAno() {
    return null;
  }
  
  public String getTaxaJurosMes() {
    return null;
  }
  
  public String getTipoTaxa() {
    return null;
  }
  
  public String getValorEmprestimo() {
    return null;
  }
  
  public float getValorLimiteMax() {
    return hyx.b(this.valorLimiteRisco);
  }
  
  public float getValorLimiteMin() {
    return hyx.b(this.valorMinimoOperacao);
  }
  
  public String getValorLimiteRisco() {
    return this.valorLimiteRisco;
  }
  
  public float getValorParcela() {
    return 0.0F;
  }
  
  public String getValorParcelaFormatted() {
    return null;
  }
  
  public String getValorParcelaSemSeguro() {
    return null;
  }
  
  public String getValorPremioSeguro() {
    return null;
  }
  
  public String getVencimento() {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\CPConsultarLimiteResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */