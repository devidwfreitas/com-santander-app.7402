import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class lk extends abv implements abx {
  @ekq
  @eks(a = "customerCode")
  private String a;
  
  @ekq
  @eks(a = "cartCode")
  private String b;
  
  @ekq
  @eks(a = "operationType")
  private String c;
  
  @ekq
  @eks(a = "totalValueSingleApplications")
  private String d;
  
  @ekq
  @eks(a = "totalValueRecurrenceApplications")
  private String e;
  
  @ekq
  @eks(a = "messages")
  private List<acb> f = new ArrayList<acb>();
  
  @ekq
  @eks(a = "errorMessages")
  private List<acb> g = new ArrayList<acb>();
  
  @ekq
  @eks(a = "terms")
  private List<lx> h = new ArrayList<lx>();
  
  @ekq
  @eks(a = "families")
  private List<lv> i = new ArrayList<lv>();
  
  public String a() {
    return this.a;
  }
  
  public void a(Double paramDouble) {
    if (paramDouble != null) {
      String str = paramDouble.toString();
    } else {
      paramDouble = null;
    } 
    this.d = (String)paramDouble;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public void a(List<acb> paramList) {
    this.f = paramList;
  }
  
  public String b() {
    return this.b;
  }
  
  public void b(Double paramDouble) {
    if (paramDouble != null) {
      String str = paramDouble.toString();
    } else {
      paramDouble = null;
    } 
    this.e = (String)paramDouble;
  }
  
  public void b(String paramString) {
    this.b = paramString;
  }
  
  public void b(List<acb> paramList) {
    this.g = paramList;
  }
  
  public String c() {
    return this.c;
  }
  
  public void c(String paramString) {
    this.c = paramString;
  }
  
  public void c(List<lx> paramList) {
    this.h = paramList;
  }
  
  public Double d() {
    try {
      return Double.valueOf(this.d);
    } catch (Exception exception) {
      return Double.valueOf(0.0D);
    } 
  }
  
  public void d(List<lv> paramList) {
    this.i = paramList;
  }
  
  public Double e() {
    try {
      return Double.valueOf(this.e);
    } catch (Exception exception) {
      return Double.valueOf(0.0D);
    } 
  }
  
  public void f() {}
  
  public void g() {
    this.d = n(this.d);
    this.e = n(this.e);
    Iterator<lv> iterator = this.i.iterator();
    while (iterator.hasNext())
      ((lv)iterator.next()).g(); 
  }
  
  public List<acb> h() {
    return this.f;
  }
  
  public List<acb> i() {
    return this.g;
  }
  
  public List<lx> j() {
    return this.h;
  }
  
  public List<lv> k() {
    return this.i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\lk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */