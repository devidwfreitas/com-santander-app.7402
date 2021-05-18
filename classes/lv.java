import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class lv extends abv implements abx {
  @ekq
  @eks(a = "name")
  private String a;
  
  @ekq
  @eks(a = "color")
  private String b;
  
  @ekq
  @eks(a = "code")
  private String c;
  
  @ekq
  @eks(a = "totalValue")
  private String d;
  
  @ekq
  @eks(a = "totalValueSingleApplications")
  private String e;
  
  @ekq
  @eks(a = "totalValueRecurrenceApplications")
  private String f;
  
  @ekq
  @eks(a = "subProducts")
  private List<lw> g = new ArrayList<lw>();
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<lw> paramList) {
    this.g = paramList;
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
  
  public String e() {
    return this.e;
  }
  
  public void e(String paramString) {
    this.e = paramString;
  }
  
  public void f() {}
  
  public void f(String paramString) {
    this.f = paramString;
  }
  
  public void g() {
    this.e = n(this.e);
    this.f = n(this.f);
    this.d = n(this.d);
    Iterator<lw> iterator = this.g.iterator();
    while (iterator.hasNext())
      ((lw)iterator.next()).g(); 
  }
  
  public String h() {
    return this.f;
  }
  
  public List<lw> i() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */