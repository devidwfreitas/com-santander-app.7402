import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class lw extends to implements abx {
  @ekq
  @eks(a = "name")
  private String a;
  
  @ekq
  @eks(a = "systemCode")
  private String b;
  
  @ekq
  @eks(a = "totalValue")
  private String c;
  
  @ekq
  @eks(a = "totalValueSingleApplications")
  private String d;
  
  @ekq
  @eks(a = "totalValueRecurrenceApplications")
  private String e;
  
  @ekq
  @eks(a = "financialApplications")
  private List<lm> f = new ArrayList<lm>();
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<lm> paramList) {
    this.f = paramList;
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
  
  public void g() {
    this.d = n(this.d);
    this.e = n(this.e);
    this.c = n(this.c);
    Iterator<lm> iterator = this.f.iterator();
    while (iterator.hasNext())
      ((lm)iterator.next()).g(); 
  }
  
  public List<lm> h() {
    return this.f;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */