import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ger implements Serializable {
  public List<gev> a;
  
  private final String b = "R$ 0,00";
  
  private String c;
  
  private String d;
  
  private List<gez> e;
  
  private gey f;
  
  private gfa g;
  
  private gfe h;
  
  private gfd i;
  
  private gff j;
  
  private gfc k;
  
  private gfb l;
  
  private String m;
  
  private void d() {
    a("R$ 0,00");
    if (this.e != null && !this.e.isEmpty())
      a(naj.M(((gez)this.e.get(0)).a())); 
  }
  
  public ger a(gey paramgey) {
    this.a = new ArrayList<gev>();
    this.f = paramgey;
    this.e = paramgey.b();
    this.m = paramgey.z();
    d();
    this.g = new gfa();
    this.h = new gfe();
    this.i = new gfd();
    this.j = new gff();
    this.k = new gfc();
    this.l = new gfb();
    this.a.add(this.h.a(paramgey.d()));
    this.a.add(this.i.a(paramgey.c()));
    this.a.add(this.j.a(paramgey.e(), paramgey.l()));
    this.a.add(this.k.a(paramgey.o(), paramgey.p(), paramgey.u(), paramgey.q(), paramgey.f(), paramgey.r()));
    this.a.add(this.l.a(paramgey.g(), paramgey.i()));
    this.a.add(this.g.a(paramgey.a()));
    return this;
  }
  
  public ger a(gfg paramgfg) {
    switch (ges.a[paramgfg.ordinal()]) {
      default:
        return null;
      case 1:
        return this.i.b(this.f.h());
      case 2:
        return this.h.b(this.f.j());
      case 3:
        return this.j.a(this.f.k(), this.f.m(), this.f.n());
      case 4:
        return this.l.a(this.f.i());
      case 5:
        break;
    } 
    return this.k.b(this.f.s(), this.f.t(), this.f.v(), this.f.w(), this.f.x(), this.f.y());
  }
  
  public String a() {
    return this.c;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public String b() {
    return this.d;
  }
  
  public void b(String paramString) {
    this.d = paramString;
  }
  
  public String c() {
    return this.m;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ger.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */