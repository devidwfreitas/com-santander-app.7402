import java.io.Serializable;

public class gky implements Serializable {
  private String a;
  
  private CharSequence b;
  
  private String c;
  
  private boolean d;
  
  private boolean e;
  
  public gky(CharSequence paramCharSequence) {
    this.b = paramCharSequence;
  }
  
  public gky(String paramString1, String paramString2) {
    this.a = paramString1;
    this.c = paramString2;
  }
  
  public gky(String paramString1, String paramString2, boolean paramBoolean) {
    this.a = paramString1;
    this.c = paramString2;
    this.d = paramBoolean;
  }
  
  public CharSequence a() {
    return this.b;
  }
  
  public void a(CharSequence paramCharSequence) {
    this.b = paramCharSequence;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.d = paramBoolean;
  }
  
  public String b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public void b(boolean paramBoolean) {
    this.e = paramBoolean;
  }
  
  public String c() {
    return this.c;
  }
  
  public boolean d() {
    return this.d;
  }
  
  public boolean e() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gky.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */