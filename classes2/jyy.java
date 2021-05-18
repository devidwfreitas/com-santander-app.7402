import org.xml.sax.Attributes;

public class jyy extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jyy(jyx paramjyx) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jyx.b(this.a) != null)
      jyx.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("return") && jyx.a(this.a).c() != null && jyx.a(this.a).c().length() > 0)
      jyx.b(this.a).a().add(jyx.a(this.a)); 
    if (paramString3.equals("conta")) {
      this.c = false;
      jyx.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("nome")) {
      this.c = false;
      jyx.a(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("saldoDisponivel")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jyx.a(this.a).c(paramString1);
    } 
    if (paramString3.equals("pagamentoMinimo")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jyx.a(this.a).d(paramString1);
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("return"))
      jyx.a(this.a, new fuw()); 
    if (paramString3.equals("conta")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("nome")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("saldoDisponivel")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
    if (paramString3.equals("pagamentoMinimo")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */