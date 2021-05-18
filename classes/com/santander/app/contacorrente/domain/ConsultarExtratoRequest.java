package com.santander.app.contacorrente.domain;

public class ConsultarExtratoRequest {
  private Conta conta;
  
  private String fromDate;
  
  private String toDate;
  
  public ConsultarExtratoRequest(Conta paramConta, String paramString1, String paramString2) {
    this.conta = paramConta;
    this.fromDate = paramString1;
    this.toDate = paramString2;
  }
  
  public Conta getConta() {
    return this.conta;
  }
  
  public String getFromDate() {
    return this.fromDate;
  }
  
  public String getToDate() {
    return this.toDate;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\contacorrente\domain\ConsultarExtratoRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */