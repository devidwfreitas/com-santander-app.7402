import java.io.Serializable;

public class igc extends gnd implements Serializable {
  @ekq
  @eks(a = "receiptData")
  private String a;
  
  @ekq
  @eks(a = "fullReceiptData")
  private String b;
  
  @ekq
  @eks(a = "bankAuthentication")
  private String c;
  
  @ekq
  @eks(a = "disclaimer")
  private String d;
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public String b() {
    return this.b;
  }
  
  public String c() {
    return this.c;
  }
  
  public String d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.b = paramString;
  }
  
  public void e(String paramString) {
    this.c = paramString;
  }
  
  public void f(String paramString) {
    this.d = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\igc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */