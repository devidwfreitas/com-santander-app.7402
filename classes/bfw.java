import java.io.Serializable;

public class bfw implements Serializable {
  protected int a = 0;
  
  private int b = 0;
  
  private String c = "";
  
  public bfw() {
    this.b = 0;
  }
  
  public int a() {
    return this.b;
  }
  
  public void a(int paramInt) {
    this.b = paramInt;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public int b() {
    return this.a;
  }
  
  public void b(int paramInt) {
    this.a = paramInt;
  }
  
  public String c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bfw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */