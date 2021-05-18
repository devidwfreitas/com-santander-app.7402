import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class gfb implements Serializable {
  @eks(a = "total")
  private String a;
  
  @eks(a = "description")
  private String b;
  
  @eks(a = "value")
  private String c;
  
  @eks(a = "percentOfApr")
  private String d;
  
  @eks(a = "percentOfTotals")
  private String e;
  
  private final String f = "R$ 0,00";
  
  private final String g = "R$ ";
  
  public ger a(List<gfb> paramList) {
    ger ger = new ger();
    ArrayList<gev> arrayList = new ArrayList();
    if (paramList != null)
      for (gfb gfb1 : paramList) {
        gev gev = new gev();
        gev.a(gfb1.a());
        gev.b(gfb1.b());
        arrayList.add(gev);
      }  
    ger.a = arrayList;
    return ger;
  }
  
  public gev a(List<gfb> paramList1, List<gfb> paramList2) {
    gev gev = new gev();
    gev.a(gfg.CONTAS_PAGAR_RECEBER);
    gev.a(gfg.CONTAS_PAGAR_RECEBER.getName());
    gev.b("R$ 0,00");
    if (paramList1 != null && !paramList1.isEmpty()) {
      gev.b("R$ " + ((gfb)paramList1.get(0)).e());
      if (paramList2 != null)
        gev.c(true); 
    } 
    return gev;
  }
  
  public String a() {
    return this.b;
  }
  
  public void a(String paramString) {
    this.b = paramString;
  }
  
  public String b() {
    return this.c;
  }
  
  public void b(String paramString) {
    this.c = paramString;
  }
  
  public String c() {
    return this.d;
  }
  
  public void c(String paramString) {
    this.d = paramString;
  }
  
  public String d() {
    return this.e;
  }
  
  public void d(String paramString) {
    this.e = paramString;
  }
  
  public String e() {
    return this.a;
  }
  
  public void e(String paramString) {
    this.a = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gfb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */