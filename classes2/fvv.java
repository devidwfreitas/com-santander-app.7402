public class fvv {
  private String a = null;
  
  private String b = null;
  
  private String c = null;
  
  private String d = null;
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
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
    return (this.a != null) ? this.a : this.c;
  }
  
  public String toString() {
    return (this.b != null) ? this.b : this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fvv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */