package com.santander.app.contacorrente.domain;

public interface LancamentoContract {
  String getData();
  
  String getDocto();
  
  String getHistorico();
  
  String getSaldo();
  
  String getValor();
  
  void setData(String paramString);
  
  void setDocto(String paramString);
  
  void setHistorico(String paramString);
  
  void setSaldo(double paramDouble);
  
  void setValor(String paramString);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\contacorrente\domain\LancamentoContract.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */