import android.util.Log;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class gfd implements Serializable {
  @eks(a = "presentValue")
  private String a;
  
  @eks(a = "type")
  private String b;
  
  @eks(a = "family")
  private String c;
  
  @eks(a = "name")
  private String d;
  
  @eks(a = "netValue")
  private String e;
  
  @eks(a = "quotaAmount")
  private String f;
  
  @eks(a = "sharePrice")
  private String g;
  
  private final String h = "R$ 0,00";
  
  private final String i = "R$ ";
  
  private List<gfd> j;
  
  public gev a(List<gfd> paramList) {
    this.j = paramList;
    gev gev = new gev();
    gev.a(gfg.FUNDOS);
    gev.a(gfg.FUNDOS.getName());
    gev.b("R$ 0,00");
    try {
      BigDecimal bigDecimal1 = new BigDecimal(0);
      BigDecimal bigDecimal2 = new BigDecimal(0);
      if (paramList != null && !paramList.isEmpty()) {
        Iterator<gfd> iterator = paramList.iterator();
        BigDecimal bigDecimal;
        for (bigDecimal = bigDecimal2; iterator.hasNext(); bigDecimal = bigDecimal.add(naj.O(gfd1.e()))) {
          gfd gfd1 = iterator.next();
          bigDecimal1 = bigDecimal1.add(naj.O(gfd1.a()));
        } 
        gev.b(naj.a(bigDecimal1));
        gev.c(naj.a(bigDecimal));
        gev.c(true);
      } 
      return gev;
    } catch (ClassNotFoundException classNotFoundException) {
      Log.e("Error", classNotFoundException.toString());
      return gev;
    } 
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
  }
  
  public ger b(List<gfd> paramList) {
    ger ger = new ger();
    ger.a("R$ 00000");
    ger.b("R$ 00000");
    ArrayList<gev> arrayList = new ArrayList();
    if (this.j != null)
      for (gfd gfd1 : this.j) {
        gev gev = new gev();
        gev.a(gfd1.b());
        gev.b(gfd1.a());
        gev.c(true);
        BigDecimal bigDecimal = new BigDecimal(0);
        if (paramList != null) {
          for (gfd gfd2 : paramList) {
            if (gfd1.b().equalsIgnoreCase(gfd2.c())) {
              gex gex = new gex();
              ArrayList<gev> arrayList1 = new ArrayList();
              arrayList1.add(new gev(gfd2.d().toUpperCase(), "", true));
              arrayList1.add(new gev("Saldo bruto", naj.b(gfd2.a())));
              arrayList1.add(new gev("Saldo líquido", naj.b(gfd2.e())));
              arrayList1.add(new gev("Qtdes. cotas", gfd2.f()));
              arrayList1.add(new gev("Valor cota", "R$ " + gfd2.g()));
              gex.a(arrayList1);
              try {
                BigDecimal bigDecimal1 = naj.O(gfd2.e());
              } catch (ClassNotFoundException classNotFoundException) {
                Log.e("Error", classNotFoundException.getMessage());
                classNotFoundException = null;
              } 
              bigDecimal = bigDecimal.add((BigDecimal)classNotFoundException);
              gev.e().add(gex);
            } 
          } 
          gev.d(String.valueOf(bigDecimal));
        } 
        arrayList.add(gev);
      }  
    ger.a = arrayList;
    return ger;
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
  
  public String f() {
    return this.f;
  }
  
  public void f(String paramString) {
    this.f = paramString;
  }
  
  public String g() {
    return this.g;
  }
  
  public void g(String paramString) {
    this.g = paramString;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gfd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */