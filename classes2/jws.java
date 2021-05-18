import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

public class jws extends DefaultHandler {
  private boolean a = false;
  
  private StringBuffer b;
  
  private mip c = (mip)miq.C();
  
  protected fvu d = null;
  
  protected fvv e = null;
  
  public fvu a() {
    return this.d;
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
      if (paramString3.equals("tokenTransacao"))
        this.c.f().i(paramString1); 
      this.b.setLength(0);
    } 
  }
  
  public void startDocument() {
    super.startDocument();
    this.b = new StringBuffer();
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jws.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */