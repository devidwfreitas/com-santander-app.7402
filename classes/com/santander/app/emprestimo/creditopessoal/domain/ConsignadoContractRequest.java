package com.santander.app.emprestimo.creditopessoal.domain;

import eks;
import hol;
import miq;

public class ConsignadoContractRequest {
  @eks(a = "bankBranchCode")
  private String bankBranchCode;
  
  @eks(a = "checkingAccountIndex")
  private String checkingAccountIndex;
  
  @eks(a = "formalizationStatus")
  private String formalizationStatus;
  
  @eks(a = "onLineAverbationCode")
  private String onLineAverbationCode;
  
  @eks(a = "simulationId")
  private String simulationId;
  
  public ConsignadoContractRequest(CPContratacao paramCPContratacao) {
    paramCPContratacao = paramCPContratacao;
    int i = miq.C().f().q().a().indexOf(((ConsignadoCalculateResponse)paramCPContratacao).conta);
    this.simulationId = String.valueOf(((hol)((ConsignadoCalculateResponse)paramCPContratacao).simulation.get(0)).a);
    this.bankBranchCode = ((ConsignadoCalculateResponse)paramCPContratacao).conta.getAgencia();
    this.checkingAccountIndex = String.valueOf(i);
    this.formalizationStatus = "true";
    this.onLineAverbationCode = ((ConsignadoCalculateResponse)paramCPContratacao).consignadoSimulationResponse.averbationCode;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\ConsignadoContractRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */