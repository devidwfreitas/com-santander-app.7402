import org.xml.sax.Attributes;

public class jqr extends jxk {
  protected StringBuffer a = null;
  
  protected boolean b = false;
  
  public jqr(jqq paramjqq) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.b)
      this.a.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jqq.a(this.c) != null)
      jqq.a(this.c).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    boolean bool2 = true;
    boolean bool1 = true;
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("codigoRetorno")) {
      this.b = false;
      jqq.a(this.c).a(this.a.toString());
      return;
    } 
    if (paramString3.equals("csoAtivo")) {
      this.b = false;
      jqj jqj = jqq.a(this.c);
      if (!this.a.toString().equals("true"))
        bool1 = false; 
      jqj.a(Boolean.valueOf(bool1));
      return;
    } 
    if (paramString3.equals("mensagemRetorno")) {
      this.b = false;
      jqq.a(this.c).b(this.a.toString());
      return;
    } 
    if (paramString3.equals("possuiCSO")) {
      this.b = false;
      jqj jqj = jqq.a(this.c);
      if (this.a.toString().equals("true")) {
        bool1 = bool2;
      } else {
        bool1 = false;
      } 
      jqj.b(Boolean.valueOf(bool1));
      return;
    } 
    if (paramString3.equals("idCartao")) {
      this.b = false;
      jqq.a(this.c).c(this.a.toString());
      return;
    } 
    if (paramString3.equals("desafio")) {
      this.b = false;
      jqq.a(this.c).d(this.a.toString());
      return;
    } 
    if (paramString3.equals("sequencia")) {
      this.b = false;
      jqq.a(this.c).e(this.a.toString());
      return;
    } 
    if (paramString3.equals("statusCSO")) {
      this.b = false;
      jqq.a(this.c).f(this.a.toString());
      return;
    } 
    if (paramString3.equals("finalCSO")) {
      this.b = false;
      jqq.a(this.c).g(this.a.toString());
      return;
    } 
    if (paramString3.equals("dataHash")) {
      this.b = false;
      jqq.a(this.c).h(this.a.toString());
      return;
    } 
    if (paramString3.equals("referOper")) {
      this.b = true;
      jqq.a(this.c).i(this.a.toString());
      return;
    } 
    if (paramString3.equals("perfil")) {
      this.b = true;
      jqq.a(this.c).j(this.a.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("solicitarCartaoNMResponse") || paramString3.equals("ativarCsoResponse"))
      jqq.a(this.c, new jqj()); 
    if (paramString3.equals("codigoRetorno") || paramString3.equals("csoAtivo") || paramString3.equals("mensagemRetorno") || paramString3.equals("possuiCSO") || paramString3.equals("idCartao") || paramString3.equals("desafio") || paramString3.equals("sequencia") || paramString3.equals("statusCSO") || paramString3.equals("finalCSO") || paramString3.equals("dataHash") || paramString3.equals("referOper") || paramString3.equals("OfertaCSOResponse") || paramString3.equalsIgnoreCase("perfil")) {
      this.b = true;
      this.a = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jqr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */