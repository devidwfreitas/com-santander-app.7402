import org.xml.sax.Attributes;

public class jzu extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jzu(jzt paramjzt) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzt.a(this.a) != null)
      jzt.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("autenticacaoBancaria")) {
      this.c = false;
      jzt.a(this.a).a(this.b.toString());
    } 
    if (paramString3.equals("PR_COD_ERRO")) {
      this.c = false;
      jzt.a(this.a).b(this.b.toString());
    } 
    if (paramString3.equals("PR_DAT_TRAN")) {
      this.c = false;
      jzt.a(this.a).c(this.b.toString());
    } 
    if (paramString3.equals("PR_DESC_ERRO")) {
      this.c = false;
      jzt.a(this.a).d(this.b.toString());
    } 
    if (paramString3.equals("PR_HOR_TRAN")) {
      this.c = false;
      jzt.a(this.a).e(this.b.toString());
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("autenticacaoBancaria") || paramString3.equals("PR_COD_ERRO") || paramString3.equals("PR_DAT_TRAN") || paramString3.equals("PR_DESC_ERRO") || paramString3.equals("PR_HOR_TRAN")) {
      this.c = true;
      this.b = new StringBuffer();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */