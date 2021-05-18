import java.io.UnsupportedEncodingException;

public class der extends dsa<String> {
  private final dsg<String> a;
  
  public der(int paramInt, String paramString, dsg<String> paramdsg, dsf paramdsf) {
    super(paramInt, paramString, paramdsf);
    this.a = paramdsg;
  }
  
  protected dse<String> a(dry paramdry) {
    String str;
    try {
      str = new String(paramdry.b, dsy.a(paramdry.c));
    } catch (UnsupportedEncodingException unsupportedEncodingException) {
      str = new String(paramdry.b);
    } 
    return dse.a(str, dsy.a(paramdry));
  }
  
  protected void a(String paramString) {
    this.a.a(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\der.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */