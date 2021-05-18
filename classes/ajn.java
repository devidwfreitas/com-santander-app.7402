import java.io.Serializable;

public class ajn implements Serializable {
  @ekq
  @eks(a = "code")
  private String a;
  
  @ekq
  @eks(a = "name")
  private String b;
  
  @ekq
  @eks(a = "subProducts")
  private ajr c;
  
  @ekq
  @eks(a = "contract")
  private ajk d;
  
  @ekq
  @eks(a = "balance")
  private ajf e;
  
  public String a() {
    return this.a;
  }
  
  public void a(ajf paramajf) {
    this.e = paramajf;
  }
  
  public void a(ajk paramajk) {
    this.d = paramajk;
  }
  
  public void a(ajr paramajr) {
    this.c = paramajr;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public ajr b() {
    return this.c;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public ajk c() {
    return this.d;
  }
  
  public ajf d() {
    return this.e;
  }
  
  public String e() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ajn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */