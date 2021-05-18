import java.io.Serializable;
import java.util.List;

public class gfa implements Serializable {
  @eks(a = "value")
  private String a;
  
  @eks(a = "percentOfTreasure")
  private String b;
  
  @eks(a = "percentOfTotal")
  private String c;
  
  private final String d = "R$ 0,00";
  
  private final String e = "R$ ";
  
  private final String f = "TOTAL";
  
  public gev a(List<gfa> paramList) {
    gev gev = new gev();
    gev.a(gfg.CONTA_CORRENTE);
    gev.a(gfg.CONTA_CORRENTE.getName());
    if (paramList != null && !paramList.isEmpty()) {
      String str1 = "R$ " + ((gfa)paramList.get(0)).a();
      gev.b(str1);
      return gev;
    } 
    String str = "R$ 0,00";
    gev.b(str);
    return gev;
  }
  
  public String a() {
    return this.a;
  }
  
  public void a(String paramString) {
    this.a = paramString;
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\gfa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */