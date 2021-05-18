package com.santander.app.emprestimo.creditopessoal.domain;

import hoj;
import hxv;

public class CPError {
  private hxv provider;
  
  public CPError(hxv paramhxv) {
    this.provider = paramhxv;
  }
  
  public CPError(String paramString1, String paramString2) {
    this.provider = (hxv)new hoj(this, paramString1, paramString2);
  }
  
  public boolean canShowMessage() {
    return (this.provider.getMensagemRetorno() != null);
  }
  
  public String getMessage() {
    return this.provider.getMensagemRetorno();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\CPError.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */