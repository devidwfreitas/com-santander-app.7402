import java.io.Serializable;

public class fuw extends fvu implements Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private String c;
  
  private String d;
  
  private String e;
  
  private fvb f;
  
  public String a() {
    return this.b;
  }
  
  public void a(fvb paramfvb) {
    this.f = paramfvb;
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
  
  public fvb d() {
    return this.f;
  }
  
  public void d(String paramString) {
    this.e = paramString;
  }
  
  public String e() {
    return this.e;
  }
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof fuw) {
      paramObject = paramObject;
      return this.b.equals(((fuw)paramObject).b);
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fuw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */