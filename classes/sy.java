import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class sy extends abv implements abx {
  @ekq
  @eks(a = "code")
  private String a;
  
  @ekq
  @eks(a = "name")
  private String b;
  
  @ekq
  @eks(a = "description")
  private String c;
  
  @ekq
  @eks(a = "colour")
  private String d;
  
  @ekq
  @eks(a = "participationPercent")
  private Double e;
  
  @ekq
  @eks(a = "subproducts")
  private List<to> f = new ArrayList<to>();
  
  @ekq
  @eks(a = "balance")
  private sw g;
  
  public String a() {
    return this.a;
  }
  
  public void a(Double paramDouble) {
    this.e = paramDouble;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<to> paramList) {
    this.f = paramList;
  }
  
  public void a(sw paramsw) {
    this.g = paramsw;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public String c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public String d() {
    return this.d;
  }
  
  public void d(String paramString) {
    this.d = paramString;
  }
  
  public Double e() {
    return this.e;
  }
  
  public void f() {}
  
  public void g() {
    if (this.g != null)
      this.g.g(); 
    Iterator<to> iterator = this.f.iterator();
    while (iterator.hasNext())
      ((to)iterator.next()).g(); 
  }
  
  public List<to> h() {
    return this.f;
  }
  
  public sw i() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\sy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */