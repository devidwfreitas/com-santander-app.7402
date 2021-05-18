import org.xml.sax.Attributes;

public class jys extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jys(jyr paramjyr) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jyr.b(this.a) != null)
      jyr.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("listaSaldoHomeLogada"))
      jyr.b(this.a).a().add(jyr.a(this.a)); 
    if (paramString3.equals("agencia")) {
      this.c = false;
      jyr.a(this.a).setAgencia(this.b.toString());
    } 
    if (paramString3.equals("conta")) {
      this.c = false;
      jyr.a(this.a).setCuenta(this.b.toString());
    } 
    if (paramString3.equals("tipoConta")) {
      this.c = false;
      jyr.a(this.a).setTipoConta(this.b.toString());
    } 
    if (paramString3.equals("saldoDisponivelTotal")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jyr.a(this.a).setValor(paramString1);
    } 
    if (paramString3.equals("saldoDisponivel")) {
      this.c = false;
      jyr.a(this.a).getExtractoHome().u(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listaSaldoHomeLogada")) {
      jyr.a(this.a, new fuu());
      jyr.a(this.a).setExtractoHome(new fuy());
    } 
    if (paramString3.equals("agencia")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("conta")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("tipoConta")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("saldoDisponivelTotal")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("saldoDisponivel")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jys.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */