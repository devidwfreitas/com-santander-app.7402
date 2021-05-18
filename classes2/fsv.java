import java.io.Serializable;

public class fsv extends fvu implements Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
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
  
  public String c(String paramString) {
    return "<" + paramString + "><TIPO_DE_PERSONA>" + this.b + "</TIPO_DE_PERSONA><CODIGO_DE_PERSONA>" + this.c + "</CODIGO_DE_PERSONA></" + paramString + ">";
  }
  
  public String d() {
    return this.e;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public void e(String paramString) {
    this.e = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fsv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */