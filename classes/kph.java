import android.support.annotation.NonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public class kph implements Comparable<kph> {
  @eks(a = "openingDate")
  private Date a;
  
  @eks(a = "schedulingDate")
  private String b;
  
  @eks(a = "endDate")
  private String c;
  
  @eks(a = "number")
  private String d;
  
  @eks(a = "service")
  private kpk e;
  
  @eks(a = "status")
  private kpl f;
  
  @eks(a = "subService")
  private kpm g;
  
  @eks(a = "insured")
  private kpi h;
  
  public static List<kph> a(String paramString, List<kph> paramList) {
    ArrayList arrayList = new ArrayList(Arrays.asList((Object[])(new ejm()).a(paramString, kpn[].class)));
    ArrayList<kph> arrayList1 = new ArrayList();
    for (kph kph1 : paramList) {
      for (kpn kpn : arrayList) {
        kpm kpm1 = kph1.i();
        if (kpm1 != null && kpm1.a() != null && kpm1.a().equals(kpn.a())) {
          kpm1.a(kpn.b());
          arrayList1.add(kph1);
        } 
      } 
    } 
    return arrayList1;
  }
  
  public int a(@NonNull kph paramkph) {
    return (this.a == null || paramkph.a == null) ? 0 : paramkph.a.compareTo(this.a);
  }
  
  public String a() {
    return mhj.a(this.a, "dd/MM'\n'HH:mm");
  }
  
  public String b() {
    return mhj.a(this.a, "dd/MM");
  }
  
  public String c() {
    return mhj.a(this.a, "dd/MM/yyyy");
  }
  
  public String d() {
    return this.b;
  }
  
  public String e() {
    return this.c;
  }
  
  public String f() {
    return this.d;
  }
  
  public kpk g() {
    return this.e;
  }
  
  public kpl h() {
    return this.f;
  }
  
  public kpm i() {
    return this.g;
  }
  
  public kpi j() {
    return this.h;
  }
  
  public String toString() {
    return (new ejm()).b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\kph.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */