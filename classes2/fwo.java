import java.io.Serializable;

public class fwo extends fvu implements Serializable {
  private static final long a = 1L;
  
  private String b;
  
  private String c;
  
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
  
  public boolean c() {
    return (this.b == null || this.b.trim().isEmpty() || this.c == null || this.c.trim().isEmpty());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fwo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */