import java.util.List;

public class kpv {
  @eks(a = "mainCoverageValue")
  private String a;
  
  @eks(a = "beneficiaries")
  private List<kpz> b;
  
  public List<kpz> a() {
    return this.b;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<kpz> paramList) {
    this.b = paramList;
  }
  
  public String b() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kpv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */