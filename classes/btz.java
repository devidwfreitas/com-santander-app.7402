import android.net.Uri;

public class btz {
  private final Uri a;
  
  private final String b;
  
  private String c;
  
  private Uri d;
  
  btz(Uri paramUri, String paramString) {
    this.a = paramUri;
    this.b = paramString;
  }
  
  public Uri a() {
    return this.a;
  }
  
  public btz a(Uri paramUri) {
    this.d = paramUri;
    return this;
  }
  
  public btz a(String paramString) {
    this.c = paramString;
    return this;
  }
  
  public String b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  public Uri d() {
    return this.d;
  }
  
  public bty e() {
    return new bty(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */