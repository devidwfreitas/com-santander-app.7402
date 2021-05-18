package com.santander.app.emprestimo.creditopessoal.domain;

import goe;
import miq;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "arg0")
public class CPTextoCondicoesCPRequest extends goe {
  @Element(required = false)
  private String termo;
  
  public CPTextoCondicoesCPRequest(String paramString) {
    miq miq = miq.C();
    setTermo(paramString);
    setConnUuid(miq.i());
    setTokenSessao(miq.j());
    setTokenTransacao(miq.f().m());
  }
  
  public void setTermo(String paramString) {
    this.termo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\CPTextoCondicoesCPRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */