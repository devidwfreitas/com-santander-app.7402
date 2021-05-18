package com.santander.app.emprestimo.creditopessoal.domain;

import java.util.List;

public class ConsignadoDadoObrigatorio {
  public static final int TYPE_EDIT_TEXT = 0;
  
  public static final int TYPE_EDIT_TEXT_DATE = 2;
  
  public static final int TYPE_SPINNER = 1;
  
  private List<String> data;
  
  private String hint;
  
  private String key;
  
  private boolean ok;
  
  private int type;
  
  private boolean useAlert;
  
  private String value;
  
  public ConsignadoDadoObrigatorio(@ConsignadoDadoObrigatorio$Type int paramInt, String paramString) {
    this.type = paramInt;
    this.key = paramString;
  }
  
  public ConsignadoDadoObrigatorio(@ConsignadoDadoObrigatorio$Type int paramInt, String paramString1, String paramString2) {
    this(paramInt, paramString1);
    this.hint = paramString2;
  }
  
  public ConsignadoDadoObrigatorio(@ConsignadoDadoObrigatorio$Type int paramInt, String paramString1, String paramString2, boolean paramBoolean) {
    this(paramInt, paramString1);
    this.hint = paramString2;
    this.useAlert = paramBoolean;
  }
  
  public List<String> getData() {
    return this.data;
  }
  
  public String getHint() {
    return this.hint;
  }
  
  public String getKey() {
    return this.key;
  }
  
  public int getType() {
    return this.type;
  }
  
  public String getValue() {
    return this.value;
  }
  
  public boolean isOk() {
    return this.ok;
  }
  
  public ConsignadoDadoObrigatorio setData(List<String> paramList) {
    this.data = paramList;
    return this;
  }
  
  public ConsignadoDadoObrigatorio setHint(String paramString) {
    this.hint = paramString;
    return this;
  }
  
  public ConsignadoDadoObrigatorio setOk(boolean paramBoolean) {
    this.ok = paramBoolean;
    return this;
  }
  
  public ConsignadoDadoObrigatorio setUseAlert(boolean paramBoolean) {
    this.useAlert = paramBoolean;
    return this;
  }
  
  public ConsignadoDadoObrigatorio setValue(String paramString) {
    this.value = paramString;
    return this;
  }
  
  public boolean useAlert() {
    return this.useAlert;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\ConsignadoDadoObrigatorio.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */