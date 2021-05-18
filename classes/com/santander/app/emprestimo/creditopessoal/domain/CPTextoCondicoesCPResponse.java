package com.santander.app.emprestimo.creditopessoal.domain;

import gnb;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.Root;

@Root(name = "return")
public class CPTextoCondicoesCPResponse extends gnb {
  @Element(required = false)
  private String codigoRetorno;
  
  @Element(required = false)
  private String conteudo;
  
  public String getCodigoRetorno() {
    return this.codigoRetorno;
  }
  
  public String getConteudo() {
    return this.conteudo;
  }
  
  public void setCodigoRetorno(String paramString) {
    this.codigoRetorno = paramString;
  }
  
  public void setConteudo(String paramString) {
    this.conteudo = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\domain\CPTextoCondicoesCPResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */