import java.io.Serializable;

public class fwf extends fvu implements Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private String c;
  
  private String d;
  
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
  
  public boolean equals(Object paramObject) {
    if (paramObject instanceof fwf) {
      paramObject = paramObject;
      return this.b.equals(((fwf)paramObject).b);
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fwf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */