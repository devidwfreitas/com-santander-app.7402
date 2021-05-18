import org.xml.sax.Attributes;

public class jxk extends jws {
  private boolean a = false;
  
  private StringBuffer b;
  
  protected fvu f = null;
  
  protected fvv g = null;
  
  public fvu a() {
    return this.f;
  }
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.a)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (this.a) {
      paramString1 = this.b.toString().trim();
      if (paramString3.equals("faultcode")) {
        this.f.setFaultcode(paramString1);
      } else if (paramString3.equals("faultactor")) {
        this.f.setFaultactor(paramString1);
      } else if (paramString3.equals("faultstring")) {
        this.f.setFaultstring(paramString1);
      } else if (!paramString3.equals("detail")) {
        if (paramString3.equals("soap-env:Fault")) {
          this.a = false;
        } else if (paramString3.equals("mensagemAEA")) {
          fvv fvv1 = new fvv();
          fvv1.c("mensagemAEA");
          fvv1.d(paramString1);
          this.f.setErrorDetail(fvv1);
        } 
      } 
      this.b.setLength(0);
    } 
  }
  
  public void startDocument() {
    super.startDocument();
    this.b = new StringBuffer();
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("soapenv:Fault") || paramString3.equals("mensagemAEA") || paramString3.equals("faultstring")) {
      this.f = new fvu();
      this.a = true;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jxk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */