import java.io.Serializable;

public class fql implements Serializable {
  public static final long a = 1L;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  public fql(String paramString1, String paramString2, String paramString3, String paramString4) {
    this.b = paramString1;
    this.e = paramString4;
    this.c = paramString2;
    this.d = paramString3;
  }
  
  public String a() {
    return this.b;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public String b() {
    return this.c;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.d;
  }
  
  public void c(String paramString) {
    this.d = paramString;
  }
  
  public String d() {
    return this.e;
  }
  
  public void d(String paramString) {
    this.e = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fql.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */