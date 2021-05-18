import java.util.ArrayList;
import java.util.List;

public class ghs implements ght {
  private List<ghu> a;
  
  public Integer a(String paramString) {
    for (ghu ghu : this.a) {
      if (paramString.equalsIgnoreCase(ghu.H()))
        return Integer.valueOf(ghu.N()); 
    } 
    return Integer.valueOf(0);
  }
  
  public List<ghu> a() {
    return this.a;
  }
  
  public void a(List<ghu> paramList) {
    this.a = paramList;
  }
  
  public List<ghu> b() {
    ArrayList<ghu> arrayList = new ArrayList();
    for (ghu ghu : this.a) {
      if (ghu.z() != null)
        arrayList.add(ghu); 
    } 
    return arrayList;
  }
  
  public void b(List<ioz> paramList) {
    for (ghu ghu : this.a) {
      for (ioz ioz : paramList) {
        if (ioz.b() == null) {
          if (ghu.B().trim().equalsIgnoreCase(ioz.n().trim()))
            ghu.r(ioz.s()); 
          continue;
        } 
        if (ghu.e() != null && ghu.e().trim().equals(ioz.b().trim()) && ghu.B().trim().equalsIgnoreCase(ioz.n().trim()))
          ghu.r(ioz.s()); 
      } 
    } 
  }
  
  public List<ghu> c() {
    return null;
  }
  
  public List<ghu> d() {
    ArrayList<ghu> arrayList = new ArrayList();
    for (ghu ghu : this.a) {
      if (ghu.z() == null)
        arrayList.add(ghu); 
    } 
    return arrayList;
  }
  
  public List<ghu> e() {
    ArrayList<ghu> arrayList = new ArrayList();
    for (ghu ghu : this.a) {
      if (ghu.y() != null && ghu.y().equalsIgnoreCase("S"))
        arrayList.add(ghu); 
    } 
    return arrayList;
  }
  
  public List<ghu> f() {
    ArrayList<ghu> arrayList = new ArrayList();
    for (ghu ghu : this.a) {
      if (ghu.u().equalsIgnoreCase("TI") && ghu.z() == null)
        arrayList.add(ghu); 
    } 
    return arrayList;
  }
  
  public boolean g() {
    return (miq.C().f().s().b() != null && miq.C().f().s().b().size() > 0);
  }
  
  public boolean h() {
    return (miq.C().f().s().d() != null && miq.C().f().s().d().size() > 0);
  }
  
  public boolean i() {
    return (miq.C().f().s().a() != null && miq.C().f().s().a().size() > 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ghs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */