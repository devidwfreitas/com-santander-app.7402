import android.app.Activity;
import java.util.ArrayList;
import java.util.Collections;

public class gbu implements gbs {
  private Activity a;
  
  private gbt b;
  
  private mip c;
  
  private gdt d;
  
  private gay e;
  
  public gbu(Activity paramActivity, gbt paramgbt) {
    this.a = paramActivity;
    this.b = paramgbt;
    this.c = (mip)miq.C();
    this.d = new gdt(paramActivity);
  }
  
  private gbe c() {
    gbe gbe = new gbe();
    gbe.setConnUuid(this.c.i());
    gbe.setTokenSessao(this.c.j());
    gbe.setTokenTransacao(this.c.f().m());
    return gbe;
  }
  
  private ArrayList<gbd> d() {
    ArrayList<gbd> arrayList = new ArrayList();
    for (gbd gbd1 : this.e.a()) {
      if (gbd1.e().equalsIgnoreCase("S"))
        arrayList.add(gbd1); 
    } 
    Collections.sort(arrayList);
    gbd gbd = new gbd();
    gbd.b("Demais Países");
    gbd.a(true);
    arrayList.add(gbd);
    return arrayList;
  }
  
  public void a() {
    this.d.a(new gbv(this), c());
  }
  
  public void b() {
    ArrayList<Comparable> arrayList = new ArrayList();
    arrayList.addAll(this.e.a());
    Collections.sort(arrayList);
    this.b.b((ArrayList)arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gbu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */