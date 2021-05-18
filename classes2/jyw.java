import org.xml.sax.Attributes;

public class jyw extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jyw(jyv paramjyv) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jyv.b(this.a) != null)
      jyv.b(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("agencia")) {
      this.c = false;
      jyv.a(this.a, this.b.toString());
    } 
    if (paramString3.equals("conta")) {
      this.c = false;
      jyv.b(this.a, this.b.toString());
    } 
    if (paramString3.equals("listFundo")) {
      jyv.a(this.a, Boolean.valueOf(false));
      jyv.b(this.a).a().add(jyv.a(this.a));
    } 
    if (paramString3.equals("listaFamilias"))
      jyv.b(this.a).b().add(jyv.c(this.a)); 
    if (paramString3.equals("codigoCor")) {
      this.c = false;
      if (jyv.d(this.a).booleanValue()) {
        jyv.a(this.a).a(this.b.toString());
      } else {
        jyv.c(this.a).a(this.b.toString());
      } 
    } 
    if (paramString3.equals("codigoFundo")) {
      this.c = false;
      jyv.a(this.a).b(this.b.toString());
      jyv.a(this.a).h(jyv.e(this.a));
      jyv.a(this.a).i(jyv.f(this.a));
    } 
    if (paramString3.equals("contaFundo")) {
      this.c = false;
      jyv.a(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("dataCota")) {
      this.c = false;
      jyv.a(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("nomeReduzidoIb")) {
      this.c = false;
      jyv.a(this.a).e(this.b.toString());
    } 
    if (paramString3.equals("saldoBruto")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jyv.a(this.a).f(paramString1);
    } 
    if (paramString3.equals("valorDisponivelRegaste")) {
      this.c = false;
      paramString2 = this.b.toString().replaceAll("\\+", "");
      paramString1 = paramString2;
      if (paramString2.contains("-")) {
        paramString1 = paramString2.replaceAll("-", "");
        paramString1 = "-" + paramString1;
      } 
      jyv.a(this.a).g(paramString1);
    } 
    if (paramString3.equals("nomeFamilia")) {
      this.c = false;
      jyv.c(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("tipoFamilia")) {
      this.c = false;
      jyv.c(this.a).c(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("listFundo")) {
      jyv.a(this.a, Boolean.valueOf(true));
      jyv.a(this.a, new fwg());
    } 
    if (paramString3.equals("listaFamilias"))
      jyv.a(this.a, new fwf()); 
    if (paramString3.equals("codigoCor") || paramString3.equals("codigoFundo") || paramString3.equals("contaFundo") || paramString3.equals("dataCota") || paramString3.equals("nomeReduzidoIb") || paramString3.equals("saldoBruto") || paramString3.equals("valorDisponivelRegaste") || paramString3.equals("nomeFamilia") || paramString3.equals("tipoFamilia") || paramString3.equals("agencia") || paramString3.equals("conta")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jyw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */