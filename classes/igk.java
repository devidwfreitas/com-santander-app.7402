import java.io.Serializable;

public class igk implements Serializable {
  @eks(a = "proposalId")
  private int a;
  
  @eks(a = "statusId")
  private String b;
  
  @eks(a = "cancellationReasonCode")
  private int c;
  
  public igk(int paramInt1, int paramInt2) {
    this.a = paramInt1;
    this.c = paramInt2;
    this.b = "C";
  }
  
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
  
  public void b(int paramInt) {
    this.c = paramInt;
  }
  
  public int c() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\igk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */