public class io {
  private String a;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private Integer e;
  
  public void a() {
    if (this.a == null)
      throw new ia(Integer.valueOf(-1), "baseURL key not found"); 
    if (this.b == null)
      throw new ia(Integer.valueOf(-1), "appKey key not found"); 
    if (this.c == null)
      throw new ia(Integer.valueOf(-1), "certificate key not found"); 
    if (this.d == null)
      throw new ia(Integer.valueOf(-1), "system key not found"); 
    if (this.e == null)
      throw new ia(Integer.valueOf(-1), "timeoutInterval key not found"); 
  }
  
  public void a(Integer paramInteger) {
    this.e = paramInteger;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.a;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.b;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public String d() {
    return this.c;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public String e() {
    return this.d;
  }
  
  public Integer f() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\io.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */