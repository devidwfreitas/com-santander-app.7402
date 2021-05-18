import java.io.Serializable;

public class igl implements Serializable {
  @eks(a = "proposalId")
  private int a;
  
  @eks(a = "title")
  private String b;
  
  @eks(a = "expireDate")
  private String c;
  
  public int a() {
    return this.a;
  }
  
  public void a(int paramInt) {
    this.a = paramInt;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\igl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */