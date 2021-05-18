import java.util.ArrayList;
import java.util.List;

public class tk extends abv implements abx {
  @ekq
  @eks(a = "contractNumber")
  private String a;
  
  @ekq
  @eks(a = "contractDate")
  private String b;
  
  @ekq
  @eks(a = "balance")
  private sw c;
  
  @ekq
  @eks(a = "groups")
  private List<abz> d = new ArrayList<abz>();
  
  @ekq
  @eks(a = "account")
  private sv e;
  
  private Double f;
  
  private Boolean g = Boolean.FALSE;
  
  public String a() {
    return this.a;
  }
  
  public void a(Boolean paramBoolean) {
    this.g = paramBoolean;
  }
  
  public void a(Double paramDouble) {
    this.f = paramDouble;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<abz> paramList) {
    this.d = paramList;
  }
  
  public void a(sv paramsv) {
    this.e = paramsv;
  }
  
  public void a(sw paramsw) {
    this.c = paramsw;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public sw c() {
    return this.c;
  }
  
  public Double d() {
    return this.f;
  }
  
  public Boolean e() {
    return this.g;
  }
  
  public void f() {}
  
  public void g() {
    if (this.c != null)
      this.c.g(); 
    if (this.e != null)
      this.e.g(); 
    this.a = n(this.a);
  }
  
  public List<abz> h() {
    return this.d;
  }
  
  public int i() {
    return 0;
  }
  
  public sv j() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\tk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */