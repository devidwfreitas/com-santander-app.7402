package com.santander.app.contacorrente.domain;

import eks;
import java.text.SimpleDateFormat;
import java.util.Date;
import nab;
import naq;

public class ExtratoResponse$Lancamento implements LancamentoContract {
  @eks(a = "balancePerMove")
  protected String balancePerMove;
  
  @eks(a = "documentNumber")
  protected String documentNumber;
  
  @eks(a = "historyDescription")
  protected String historyDescription;
  
  @eks(a = "releaseDate")
  protected String releaseDate;
  
  @eks(a = "releaseValue")
  protected String releaseValue;
  
  protected String formatValor(String paramString) {
    return naq.n(paramString);
  }
  
  public String getData() {
    try {
      Date date = (new SimpleDateFormat("yyyy-MM-dd")).parse(this.releaseDate);
      return (new SimpleDateFormat("dd/MM/yyyy")).format(date);
    } catch (Exception exception) {
      return this.releaseDate;
    } 
  }
  
  public String getDocto() {
    return this.documentNumber;
  }
  
  public String getHistorico() {
    return nab.a().c(this.historyDescription);
  }
  
  public String getSaldo() {
    try {
      return formatValor(nab.a().c(this.balancePerMove));
    } catch (Exception exception) {
      return "0";
    } 
  }
  
  public String getValor() {
    return formatValor(nab.a().c(this.releaseValue));
  }
  
  public void setData(String paramString) {
    this.releaseDate = paramString;
  }
  
  public void setDocto(String paramString) {
    this.documentNumber = paramString;
  }
  
  public void setHistorico(String paramString) {
    this.historyDescription = paramString;
  }
  
  public void setSaldo(double paramDouble) {
    this.balancePerMove = String.format("%.2f", new Object[] { Double.valueOf(paramDouble) });
  }
  
  public void setValor(String paramString) {
    this.releaseValue = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\contacorrente\domain\ExtratoResponse$Lancamento.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */