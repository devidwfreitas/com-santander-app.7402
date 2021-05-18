import java.io.Serializable;

public class igj implements Serializable {
  @eks(a = "code")
  private int a;
  
  @eks(a = "description")
  private String b;
  
  private boolean c = false;
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.c = paramBoolean;
  }
  
  public boolean a() {
    return this.c;
  }
  
  public int b() {
    return this.a;
  }
  
  public String c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\igj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */