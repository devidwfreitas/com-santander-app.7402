import java.io.Serializable;

public class bfx implements Serializable {
  private String a = null;
  
  public bfx() {}
  
  public bfx(String paramString) {
    this.a = paramString;
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bfx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */