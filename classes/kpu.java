import java.util.List;

@Deprecated
public class kpu {
  @eks(a = "deathCoverageValue")
  private String a;
  
  @eks(a = "beneficiaries")
  private List<kpw> b;
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<kpw> paramList) {
    this.b = paramList;
  }
  
  public List<kpw> b() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kpu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */