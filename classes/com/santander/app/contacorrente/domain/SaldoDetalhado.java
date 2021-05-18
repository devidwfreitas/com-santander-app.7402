package com.santander.app.contacorrente.domain;

public interface SaldoDetalhado {
  String getCpmfAcumulado();
  
  String getCpmfProvisionadaSobreSaldo();
  
  String getDesbloqueio1Dia();
  
  String getDesbloqueio2Dias();
  
  String getDesbloqueioMais2Dias();
  
  String getIofAcumuladosAteData();
  
  String getJurosAcumuladosAteData();
  
  String getLancamentosProvisionadosCredito();
  
  String getLancamentosProvisionadosDebito();
  
  String getLimiteDescricao1();
  
  String getLimiteDescricao2();
  
  String getLimiteValor1();
  
  String getLimiteValor2();
  
  String getMensagemErro();
  
  String getMensagemRetorno();
  
  String getProvisaoEncargos();
  
  String getSaldoBloqueado();
  
  String getSaldoBloqueadoJudicial();
  
  String getSaldoBloqueioDia();
  
  String getSaldoContaCorrenteContaMax();
  
  String getSaldoDisponivel();
  
  String getSaldoDisponivelContaCorrenteContaMax();
  
  String getSaldoDisponivelTotal();
  
  String getSaldoFundosComResgateAutomatico();
  
  String getSaldoTotalContaCorrenteContaMax();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\contacorrente\domain\SaldoDetalhado.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */