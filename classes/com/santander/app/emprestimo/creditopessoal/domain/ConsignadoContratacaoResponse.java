package com.santander.app.emprestimo.creditopessoal.domain;

import com.santander.app.contacorrente.domain.Conta;
import eks;
import hyx;
import java.util.Calendar;

public class ConsignadoContratacaoResponse implements CPContratacao {
  @eks(a = "bankAutentication")
  private String bankAutentication;
  
  @eks(a = "contractDate")
  private String contractDate;
  
  private CPContratacao contratacao;
  
  @eks(a = "id")
  private String id;
  
  @eks(a = "messageErrorRetorno")
  private String messageErrorRetorno;
  
  private String getMessageErrorRetorno() {
    return this.messageErrorRetorno;
  }
  
  public String getAutenticacaoBancaria() {
    return this.bankAutentication;
  }
  
  public Conta getConta() {
    return this.contratacao.getConta();
  }
  
  public String getDataHoraSolicitacao() {
    try {
      Calendar calendar = hyx.d(this.contractDate);
      return hyx.c("dd/MM/yyyy - HH:mm").format(calendar.getTime());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public String getDiaPagamentoFormatted() {
    return this.contratacao.getDiaPagamentoFormatted();
  }
  
  public String getFontePagadoraFormatted() {
    return this.contratacao.getFontePagadoraFormatted();
  }
  
  public String getIofFormatted() {
    return this.contratacao.getIofFormatted();
  }
  
  public String getIofPercentageFormatted() {
    return this.contratacao.getIofPercentageFormatted();
  }
  
  public String getJurosMoratorioFormatted() {
    return this.contratacao.getJurosMoratorioFormatted();
  }
  
  public String getLiberadoPercentageFormatted() {
    return this.contratacao.getLiberadoPercentageFormatted();
  }
  
  public String getMessageError() {
    return getMessageErrorRetorno();
  }
  
  public String getMultaMoratorioFormatted() {
    return this.contratacao.getMultaMoratorioFormatted();
  }
  
  public String getNumeroContratoFormatted() {
    return this.id;
  }
  
  public String getParcelaFormatted() {
    return this.contratacao.getParcelaFormatted();
  }
  
  public String getSeguroPercentageFormatted() {
    return this.contratacao.getSeguroPercentageFormatted();
  }
  
  public String getTaxaCETBreakLineFormatted() {
    return this.contratacao.getTaxaCETBreakLineFormatted();
  }
  
  public String getTaxaCETFormatted() {
    return this.contratacao.getTaxaCETFormatted();
  }
  
  public String getTaxaJurosBreakLineFormatted() {
    return this.contratacao.getTaxaJurosBreakLineFormatted();
  }
  
  public String getTaxaJurosFormatted() {
    return this.contratacao.getTaxaJurosFormatted();
  }
  
  public String getTaxaJurosFormatted(boolean paramBoolean) {
    return this.contratacao.getTaxaJurosFormatted(paramBoolean);
  }
  
  public String getTaxaJurosMesCustomerFormatted() {
    return this.contratacao.getTaxaJurosMesCustomerFormatted();
  }
  
  public String getTotalPagarFormatted() {
    return this.contratacao.getTotalPagarFormatted();
  }
  
  public String getTotalPercentageFormatted() {
    return this.contratacao.getTotalPercentageFormatted();
  }
  
  public int getType() {
    return this.contratacao.getType();
  }
  
  public int getTypeSecure() {
    return this.contratacao.getTypeSecure();
  }
  
  public String getUltimoVencimentoFormatted() {
    return this.contratacao.getUltimoVencimentoFormatted();
  }
  
  public String getValorEmprestimoFormatted() {
    return this.contratacao.getValorEmprestimoFormatted();
  }
  
  public String getValorEntregueFormatted() {
    return this.contratacao.getValorEntregueFormatted();
  }
  
  public String getValorParcelaFormatted() {
    return this.contratacao.getValorParcelaFormatted();
  }
  
  public float getValorPremioSeguroCP() {
    return this.contratacao.getValorPremioSeguroCP();
  }
  
  public String getValorPremioSeguroFormatted() {
    return this.contratacao.getValorPremioSeguroFormatted();
  }
  
  public float getValorPremioSeguroPrestamista() {
    return this.contratacao.getValorPremioSeguroPrestamista();
  }
  
  public String getValorTotalComEncargosFormatted() {
    return this.contratacao.getValorTotalComEncargosFormatted();
  }
  
  public String getValorTotalContractsFormatted() {
    return "";
  }
  
  public String getValorTotalRefinFormatted() {
    return "";
  }
  
  public String getVencimentoFormatted() {
    return this.contratacao.getVencimentoFormatted();
  }
  
  public boolean isRefinanciamento() {
    return this.contratacao.isRefinanciamento();
  }
  
  public void setCalculateResponse(CPContratacao paramCPContratacao) {
    this.contratacao = paramCPContratacao;
  }
  
  public void setMessageErrorRetorno(String paramString) {
    this.messageErrorRetorno = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\ConsignadoContratacaoResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */