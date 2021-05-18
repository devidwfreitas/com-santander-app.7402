import java.io.Serializable;

public class inx implements Serializable {
  public static final long a = 1L;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private String g;
  
  private Boolean h;
  
  public inx(String paramString1, String paramString2, String paramString3, String paramString4) {
    this.g = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.h = Boolean.valueOf(false);
  }
  
  public inx(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6) {
    this.g = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
    this.f = paramString6;
    this.h = Boolean.valueOf(false);
  }
  
  public String a() {
    return this.g;
  }
  
  public void a(Boolean paramBoolean) {
    this.h = paramBoolean;
  }
  
  public void a(String paramString) {
    this.g = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public String d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public String e() {
    return this.e;
  }
  
  public void e(String paramString) {
    this.e = paramString;
  }
  
  public String f() {
    return this.f;
  }
  
  public void f(String paramString) {
    this.f = paramString;
  }
  
  public Boolean g() {
    return this.h;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\inx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */