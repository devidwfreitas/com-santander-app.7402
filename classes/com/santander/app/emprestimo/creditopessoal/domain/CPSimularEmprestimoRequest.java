package com.santander.app.emprestimo.creditopessoal.domain;

import com.santander.app.contacorrente.domain.Conta;
import goe;
import hyx;
import java.io.Serializable;
import miq;
import naf;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class CPSimularEmprestimoRequest extends goe implements Serializable {
  @Element(required = false)
  private String codigoAgencia;
  
  @Element(required = false)
  private String codigoAgenciaUG = null;
  
  @Element(required = false)
  private String codigoBancoUG = null;
  
  @Element(required = false)
  private String codigoCliente;
  
  @Element(required = false)
  private String codigoCondalte;
  
  @Element(required = false)
  private String codigoContratoUG;
  
  @Element(required = false)
  private String codigoEvento;
  
  @Element(required = false)
  private String codigoProduto;
  
  @Element(required = false)
  private String codigoRenegociacao;
  
  @Element(required = false)
  private String codigoSubProduto;
  
  @Element(required = false)
  private String codigoTarifa;
  
  @Element(required = false)
  private String codigoTransacao;
  
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
  private String diaDebitoParcela;
  
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
  private String identNovoPrazo;
  
  @Element(required = false)
  private String indFluxoProduto;
  
  @Element(required = false)
  private String numeroControle;
  
  @Element(required = false)
  private String quantidadeParcela;
  
  @Element(required = false)
  private String quantidadePrazoMax;
  
  @Element(required = false)
  private String quantidadePrazoMin;
  
  @Element(required = false)
  private String referOper;
  
  @Element(required = false)
  private String taxaCETAno;
  
  @Element(required = false)
  private String taxaCETMes;
  
  @Element(required = false)
  private String taxaInadimplencia;
  
  @Element(required = false)
  private String taxaJurosAno;
  
  @Element(required = false)
  private String taxaJurosMes;
  
  @Element(required = false)
  private String taxaMora;
  
  @Element(required = false)
  private String tipoCondalte;
  
  @Element(required = false)
  private String tipoSeguro;
  
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
  private String valorEmprestimo;
  
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
  private String valorParcela;
  
  @Element(required = false)
  private String valorParcelaSemSeguro;
  
  @Element(required = false)
  private String valorPremioSeguro;
  
  @Element(required = false)
  private String valorSaldoLiquido;
  
  @Element(required = false)
  private String valorTME;
  
  @Element(required = false)
  private String valorTMESemSeguro;
  
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
  
  public CPSimularEmprestimoRequest(Conta paramConta, float paramFloat, int paramInt1, int paramInt2, CPConsultarLimiteResponse paramCPConsultarLimiteResponse) {
    this(paramCPConsultarLimiteResponse);
    String str;
    naf naf = new naf();
    setConta(naf.b(paramConta.getCuenta().getBytes()));
    this.codigoAgencia = naf.b(paramConta.getAgencia().getBytes());
    if (paramInt2 > 0) {
      str = String.valueOf(paramInt2);
    } else {
      str = "";
    } 
    this.diaDebitoParcela = str;
    if (paramInt1 > 0) {
      str = String.valueOf(paramInt1);
    } else {
      str = "";
    } 
    this.quantidadeParcela = str;
    this.valorEmprestimo = hyx.a(paramFloat);
    this.valorDesejado = hyx.a(paramFloat);
    setSeguro(true);
    miq miq = miq.C();
    setConnUuid(miq.i());
    setTokenSessao(miq.j());
    setTokenTransacao(miq.f().m());
  }
  
  private CPSimularEmprestimoRequest(CPConsultarLimiteResponse paramCPConsultarLimiteResponse) {
    this.codigoCliente = paramCPConsultarLimiteResponse.codigoCliente;
    this.codigoCondalte = null;
    this.codigoContratoUG = null;
    this.codigoEvento = paramCPConsultarLimiteResponse.codigoEvento;
    this.codigoProduto = paramCPConsultarLimiteResponse.codigoProduto;
    this.codigoRenegociacao = null;
    this.codigoSubProduto = paramCPConsultarLimiteResponse.codigoSubProduto;
    this.codigoTarifa = paramCPConsultarLimiteResponse.codigoTarifa;
    this.codigoTransacao = paramCPConsultarLimiteResponse.codigoTransacao;
    this.dataAprovacaoLimite = paramCPConsultarLimiteResponse.dataAprovacaoLimite;
    this.dataContabil = paramCPConsultarLimiteResponse.dataContabil;
    this.dataOferta = paramCPConsultarLimiteResponse.dataOferta;
    this.dataPrimeiroVencimento = paramCPConsultarLimiteResponse.dataPrimeiroVencimento;
    this.dataSolicitacao = paramCPConsultarLimiteResponse.dataSolicitacao;
    this.dataUltimoVencimento = paramCPConsultarLimiteResponse.dataUltimoVencimento;
    this.horaSolicitacao = paramCPConsultarLimiteResponse.horaSolicitacao;
    this.idSolicitacao = paramCPConsultarLimiteResponse.idSolicitacao;
    this.idTransacaoPositiva = paramCPConsultarLimiteResponse.idTransacaoPositiva;
    this.idTransacaoVendedora = paramCPConsultarLimiteResponse.idTransacaoVendedora;
    this.idadeMaxSeguro = paramCPConsultarLimiteResponse.idadeMaxSeguro;
    this.idadeMinSeguro = paramCPConsultarLimiteResponse.idadeMinSeguro;
    this.identNovoPrazo = null;
    this.indFluxoProduto = paramCPConsultarLimiteResponse.indFluxoProduto;
    this.numeroControle = paramCPConsultarLimiteResponse.numeroControle;
    this.quantidadePrazoMax = paramCPConsultarLimiteResponse.quantidadePrazoMax;
    this.quantidadePrazoMin = paramCPConsultarLimiteResponse.quantidadePrazoMin;
    this.referOper = null;
    this.taxaCETAno = paramCPConsultarLimiteResponse.taxaCETAno;
    this.taxaCETMes = paramCPConsultarLimiteResponse.taxaCETMes;
    this.taxaInadimplencia = null;
    this.taxaJurosAno = paramCPConsultarLimiteResponse.taxaJurosAno;
    this.taxaJurosMes = paramCPConsultarLimiteResponse.taxaJurosMes;
    this.taxaMora = paramCPConsultarLimiteResponse.taxaMora;
    this.tipoCondalte = null;
    this.tipoTaxa = paramCPConsultarLimiteResponse.tipoTaxa;
    this.valorCPMF = paramCPConsultarLimiteResponse.valorCPMF;
    this.valorCoberturaSeguro = paramCPConsultarLimiteResponse.valorCoberturaSeguro;
    this.valorComissaoDisponivelLimite = paramCPConsultarLimiteResponse.valorComissaoDisponivelLimite;
    this.valorDesejado = paramCPConsultarLimiteResponse.valorDesejado;
    this.valorDespesa = paramCPConsultarLimiteResponse.valorDespesa;
    this.valorIOF = paramCPConsultarLimiteResponse.valorIOF;
    this.valorIOFSemSeguro = paramCPConsultarLimiteResponse.valorIOFSemSeguro;
    this.valorLimiteRisco = paramCPConsultarLimiteResponse.valorLimiteRisco;
    this.valorMinimoOperacao = paramCPConsultarLimiteResponse.valorMinimoOperacao;
    this.valorMinimoParcela = paramCPConsultarLimiteResponse.valorMinimoParcela;
    this.valorParcela = paramCPConsultarLimiteResponse.valorParcela;
    this.valorParcelaSemSeguro = paramCPConsultarLimiteResponse.valorParcelaSemSeguro;
    this.valorPremioSeguro = paramCPConsultarLimiteResponse.valorPremioSeguro;
    this.valorSaldoLiquido = paramCPConsultarLimiteResponse.valorSaldoLiquido;
    this.valorTME = paramCPConsultarLimiteResponse.valorTME;
    this.valorTMESemSeguro = null;
    this.valorTarifaContratacao = paramCPConsultarLimiteResponse.valorTarifaContratacao;
    this.valorTotalComEncargos = paramCPConsultarLimiteResponse.valorTotalComEncargos;
    this.valorTotalFinanciamento = paramCPConsultarLimiteResponse.valorTotalFinanciamento;
    this.valorTotalFinanciamentoSemSeguro = paramCPConsultarLimiteResponse.valorTotalFinanciamentoSemSeguro;
    this.valorTroco = paramCPConsultarLimiteResponse.valorTroco;
    this.valorTrocoMaximo = paramCPConsultarLimiteResponse.valorTrocoMaximo;
    this.valorTrocoMinimo = paramCPConsultarLimiteResponse.valorTrocoMinimo;
  }
  
  public void setSeguro(boolean paramBoolean) {
    String str;
    if (paramBoolean) {
      str = "1";
    } else {
      str = "0";
    } 
    this.tipoSeguro = str;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\CPSimularEmprestimoRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */