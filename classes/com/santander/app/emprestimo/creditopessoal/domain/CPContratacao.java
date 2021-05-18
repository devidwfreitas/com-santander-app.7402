package com.santander.app.emprestimo.creditopessoal.domain;

import com.santander.app.contacorrente.domain.Conta;
import hxt;
import hxu;

public interface CPContratacao {
  String getAutenticacaoBancaria();
  
  Conta getConta();
  
  String getDataHoraSolicitacao();
  
  String getDiaPagamentoFormatted();
  
  String getFontePagadoraFormatted();
  
  String getIofFormatted();
  
  String getIofPercentageFormatted();
  
  String getJurosMoratorioFormatted();
  
  String getLiberadoPercentageFormatted();
  
  String getMessageError();
  
  String getMultaMoratorioFormatted();
  
  String getNumeroContratoFormatted();
  
  String getParcelaFormatted();
  
  String getSeguroPercentageFormatted();
  
  String getTaxaCETBreakLineFormatted();
  
  String getTaxaCETFormatted();
  
  String getTaxaJurosBreakLineFormatted();
  
  String getTaxaJurosFormatted();
  
  String getTaxaJurosFormatted(boolean paramBoolean);
  
  String getTaxaJurosMesCustomerFormatted();
  
  String getTotalPagarFormatted();
  
  String getTotalPercentageFormatted();
  
  @hxu
  int getType();
  
  @hxt
  int getTypeSecure();
  
  String getUltimoVencimentoFormatted();
  
  String getValorEmprestimoFormatted();
  
  String getValorEntregueFormatted();
  
  String getValorParcelaFormatted();
  
  float getValorPremioSeguroCP();
  
  String getValorPremioSeguroFormatted();
  
  float getValorPremioSeguroPrestamista();
  
  String getValorTotalComEncargosFormatted();
  
  String getValorTotalContractsFormatted();
  
  String getValorTotalRefinFormatted();
  
  String getVencimentoFormatted();
  
  boolean isRefinanciamento();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\CPContratacao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */