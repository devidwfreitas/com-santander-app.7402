package com.santander.app.contacorrente.domain;

import fuu;
import java.io.Serializable;
import java.util.List;
import jdc;
import jdd;
import naq;

public class Conta extends fuu implements Serializable {
  private List<jdc> familias;
  
  private List<jdd> fundos;
  
  private int indexConta;
  
  private String indiceAgenciaConta;
  
  private String saldoTotalPoupanca;
  
  private String saldoTotalPrevidencia;
  
  private String saldoTotalRendaFixa;
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof Conta) {
      paramObject = paramObject;
      return getCuenta().equals(paramObject.getCuenta());
    } 
    return false;
  }
  
  public List<jdc> getFamilias() {
    return this.familias;
  }
  
  public List<jdd> getFundos() {
    return this.fundos;
  }
  
  public int getIndexConta() {
    return this.indexConta;
  }
  
  public String getIndiceAgenciaConta() {
    return this.indiceAgenciaConta;
  }
  
  public String getSaldoTotalPoupanca() {
    return this.saldoTotalPoupanca;
  }
  
  public String getSaldoTotalPrevidencia() {
    return this.saldoTotalPrevidencia;
  }
  
  public String getSaldoTotalRendaFixa() {
    return this.saldoTotalRendaFixa;
  }
  
  public void setFamilias(List<jdc> paramList) {
    this.familias = paramList;
  }
  
  public void setFundos(List<jdd> paramList) {
    this.fundos = paramList;
  }
  
  public void setIndexConta(int paramInt) {
    this.indexConta = paramInt;
  }
  
  public void setIndiceAgenciaConta(String paramString) {
    this.indiceAgenciaConta = paramString;
  }
  
  public void setSaldoTotalPoupanca(String paramString) {
    this.saldoTotalPoupanca = paramString;
  }
  
  public void setSaldoTotalPrevidencia(String paramString) {
    this.saldoTotalPrevidencia = paramString;
  }
  
  public void setSaldoTotalRendaFixa(String paramString) {
    this.saldoTotalRendaFixa = paramString;
  }
  
  public String toString() {
    return (getAgencia() != null && !getAgencia().isEmpty() && getCuenta() != null && !getCuenta().isEmpty()) ? naq.d(getAgencia(), getCuenta()) : "Escolha a nova conta preferencial";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\contacorrente\domain\Conta.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */