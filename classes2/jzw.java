import android.util.Base64;
import android.util.Log;
import org.xml.sax.Attributes;

public class jzw extends jxk {
  private StringBuffer b = null;
  
  private boolean c = false;
  
  public jzw(jzv paramjzv) {}
  
  public void characters(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    super.characters(paramArrayOfchar, paramInt1, paramInt2);
    if (this.c)
      this.b.append(paramArrayOfchar, paramInt1, paramInt2); 
  }
  
  public void endDocument() {
    if (jzv.a(this.a) != null)
      jzv.a(this.a).setError(a()); 
  }
  
  public void endElement(String paramString1, String paramString2, String paramString3) {
    fwr fwr;
    super.endElement(paramString1, paramString2, paramString3);
    if (paramString3.equals("arg1")) {
      this.c = false;
      jzv.a(this.a).t(this.b.toString());
      return;
    } 
    if (paramString3.equals("arg2")) {
      this.c = false;
      jzv.a(this.a).c(this.b.toString());
      return;
    } 
    if (paramString3.equals("arg5")) {
      this.c = false;
      jzv.a(this.a).a(this.b.toString());
      return;
    } 
    if (paramString3.equals("arg3")) {
      this.c = false;
      naf naf = new naf();
      try {
        String str;
        String[] arrayOfString = naf.c(Base64.decode(this.b.toString().getBytes("UTF-8"), 0)).split("\\|");
        jzv.a(this.a).p(arrayOfString[0]);
        jzv.a(this.a).j(arrayOfString[1]);
        fwr = jzv.a(this.a);
        if (arrayOfString.length > 2) {
          str = arrayOfString[2];
        } else {
          str = "";
        } 
        fwr.w(str);
        fwr = jzv.a(this.a);
        if (arrayOfString.length > 3) {
          str = arrayOfString[3];
        } else {
          str = "";
        } 
        fwr.x(str);
        return;
      } catch (Exception exception) {
        Log.e("Error", exception.getMessage());
        return;
      } 
    } 
    if (fwr.equals("arg6")) {
      this.c = false;
      jzv.a(this.a).y(this.b.toString());
      return;
    } 
    if (fwr.equals("arg7")) {
      this.c = false;
      jzv.a(this.a).z(this.b.toString());
      return;
    } 
  }
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes) {
    super.startElement(paramString1, paramString2, paramString3, paramAttributes);
    if (paramString3.equals("arg1")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("arg2")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("arg3")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("arg5")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("arg6")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
    if (paramString3.equals("arg7")) {
      this.c = true;
      this.b = new StringBuffer();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jzw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */