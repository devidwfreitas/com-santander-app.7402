package com.santander.app.emprestimo.creditopessoal.domain;

import com.santander.app.contacorrente.domain.Conta;
import goe;
import java.io.Serializable;
import miq;
import naf;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class CPContratarEmprestimoRequest extends goe implements Serializable {
  @Element(required = false)
  private String codigoAgencia;
  
  @Element(required = false)
  private String codigoAgenciaUG;
  
  @Element(required = false)
  private String codigoBancoUG;
  
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
  
  public CPContratarEmprestimoRequest(CPContratacao paramCPContratacao) {
    this((CPSimularEmprestimoResponse)paramCPContratacao);
    miq miq = miq.C();
    naf naf = new naf();
    Conta conta = paramCPContratacao.getConta();
    setConta(naf.b(conta.getCuenta().getBytes()));
    setTokenSessao(miq.j());
    setTokenTransacao(miq.f().m());
    setConnUuid(miq.i());
    this.codigoAgencia = naf.b(conta.getAgencia().getBytes());
  }
  
  private CPContratarEmprestimoRequest(CPSimularEmprestimoResponse paramCPSimularEmprestimoResponse) {
    this.codigoAgenciaUG = paramCPSimularEmprestimoResponse.consultarLimiteResponse.bancoAgenciaContrUG;
    this.codigoBancoUG = paramCPSimularEmprestimoResponse.consultarLimiteResponse.bancoAgenciaContrUG;
    this.codigoCliente = paramCPSimularEmprestimoResponse.codigoCliente;
    this.codigoCondalte = null;
    this.codigoContratoUG = paramCPSimularEmprestimoResponse.consultarLimiteResponse.bancoAgenciaContrUG;
    this.codigoEvento = paramCPSimularEmprestimoResponse.informacaoParcela.getCodigoEvento();
    this.codigoProduto = paramCPSimularEmprestimoResponse.codigoProduto;
    this.codigoRenegociacao = paramCPSimularEmprestimoResponse.codigoProduto;
    this.codigoSubProduto = paramCPSimularEmprestimoResponse.codigoSubProduto;
    this.codigoTarifa = paramCPSimularEmprestimoResponse.informacaoParcela.getCodigoTarifa();
    this.codigoTransacao = paramCPSimularEmprestimoResponse.codigoTransacao;
    this.dataAprovacaoLimite = paramCPSimularEmprestimoResponse.dataAprovacaoLimite;
    this.dataContabil = paramCPSimularEmprestimoResponse.dataContabil;
    this.dataOferta = paramCPSimularEmprestimoResponse.dataOferta;
    this.dataPrimeiroVencimento = paramCPSimularEmprestimoResponse.informacaoParcela.getDataPrimeiroVencimento();
    this.dataSolicitacao = paramCPSimularEmprestimoResponse.dataSolicitacao;
    this.dataUltimoVencimento = paramCPSimularEmprestimoResponse.informacaoParcela.getDataUltimoVencimento();
    this.diaDebitoParcela = paramCPSimularEmprestimoResponse.informacaoParcela.getDataPrimeiroVencimento().substring(0, 2);
    this.horaSolicitacao = paramCPSimularEmprestimoResponse.horaSolicitacao;
    this.idSolicitacao = paramCPSimularEmprestimoResponse.idSolicitacao;
    this.idTransacaoPositiva = paramCPSimularEmprestimoResponse.idTransacaoPositiva;
    this.idTransacaoVendedora = paramCPSimularEmprestimoResponse.idTransacaoVendedora;
    this.idadeMaxSeguro = paramCPSimularEmprestimoResponse.idadeMaxSeguro;
    this.idadeMinSeguro = paramCPSimularEmprestimoResponse.idadeMinSeguro;
    this.identNovoPrazo = paramCPSimularEmprestimoResponse.indFluxoProduto;
    this.indFluxoProduto = paramCPSimularEmprestimoResponse.indFluxoProduto;
    this.numeroControle = paramCPSimularEmprestimoResponse.numeroControle;
    this.quantidadeParcela = paramCPSimularEmprestimoResponse.informacaoParcela.getQuantidadeParcela();
    this.quantidadePrazoMax = paramCPSimularEmprestimoResponse.informacaoParcela.getQuantidadePrazoMax();
    this.quantidadePrazoMin = paramCPSimularEmprestimoResponse.informacaoParcela.getQuantidadePrazoMin();
    this.referOper = null;
    this.taxaCETAno = paramCPSimularEmprestimoResponse.informacaoParcela.getTaxaCETAno();
    this.taxaCETMes = paramCPSimularEmprestimoResponse.informacaoParcela.getTaxaCETMes();
    this.taxaInadimplencia = paramCPSimularEmprestimoResponse.informacaoParcela.getTaxaInadimplencia();
    this.taxaJurosAno = paramCPSimularEmprestimoResponse.informacaoParcela.getTaxaJurosAno();
    this.taxaJurosMes = paramCPSimularEmprestimoResponse.informacaoParcela.getTaxaJurosMes();
    this.taxaMora = paramCPSimularEmprestimoResponse.informacaoParcela.getTaxaMora();
    this.tipoSeguro = paramCPSimularEmprestimoResponse.tipoSeguro;
    this.tipoTaxa = paramCPSimularEmprestimoResponse.informacaoParcela.getTipoTaxa();
    this.valorCPMF = paramCPSimularEmprestimoResponse.informacaoParcela.getValorCPMF();
    this.valorCoberturaSeguro = paramCPSimularEmprestimoResponse.valorCoberturaSeguro;
    this.valorComissaoDisponivelLimite = paramCPSimularEmprestimoResponse.informacaoParcela.getValorComissaoDisponivelLimite();
    this.valorDesejado = paramCPSimularEmprestimoResponse.valorDesejado;
    this.valorDespesa = paramCPSimularEmprestimoResponse.informacaoParcela.getValorDespesa();
    this.valorEmprestimo = paramCPSimularEmprestimoResponse.informacaoParcela.getValorEmprestimo();
    this.valorIOF = paramCPSimularEmprestimoResponse.informacaoParcela.getValorIOF();
    this.valorIOFSemSeguro = paramCPSimularEmprestimoResponse.informacaoParcela.getValorIOFSemSeguro();
    this.valorLimiteRisco = paramCPSimularEmprestimoResponse.valorLimiteRisco;
    this.valorMinimoOperacao = paramCPSimularEmprestimoResponse.valorMinimoOperacao;
    this.valorMinimoParcela = paramCPSimularEmprestimoResponse.valorMinimoParcela;
    this.valorParcela = paramCPSimularEmprestimoResponse.informacaoParcela.getValorParcela();
    this.valorParcelaSemSeguro = paramCPSimularEmprestimoResponse.informacaoParcela.getValorParcelaSemSeguro();
    this.valorPremioSeguro = paramCPSimularEmprestimoResponse.informacaoParcela.getValorPremioSeguro();
    this.valorSaldoLiquido = paramCPSimularEmprestimoResponse.valorSaldoLiquido;
    this.valorTME = paramCPSimularEmprestimoResponse.informacaoParcela.getValorTME();
    this.valorTMESemSeguro = paramCPSimularEmprestimoResponse.informacaoParcela.getValorTMESemSeguro();
    this.valorTarifaContratacao = paramCPSimularEmprestimoResponse.informacaoParcela.getValorTarifaContratacao();
    this.valorTotalComEncargos = paramCPSimularEmprestimoResponse.informacaoParcela.getValorTotalComEncargos();
    this.valorTotalFinanciamento = paramCPSimularEmprestimoResponse.informacaoParcela.getValorTotalFinanciamento();
    this.valorTotalFinanciamentoSemSeguro = paramCPSimularEmprestimoResponse.informacaoParcela.getValorTotalFinanciamentoSemSeguro();
    this.valorTroco = paramCPSimularEmprestimoResponse.valorTroco;
    this.valorTrocoMaximo = paramCPSimularEmprestimoResponse.valorTrocoMaximo;
    this.valorTrocoMinimo = paramCPSimularEmprestimoResponse.valorTrocoMinimo;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\CPContratarEmprestimoRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */