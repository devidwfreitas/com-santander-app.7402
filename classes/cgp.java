import android.util.Log;
import com.github.mikephil.charting.data.Entry;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cgp extends cgg<cil<? extends Entry>> {
  private cgt j;
  
  private cge k;
  
  private chd l;
  
  private cgm m;
  
  private cgk n;
  
  public int a(cgo paramcgo) {
    return t().indexOf(paramcgo);
  }
  
  public cgk a() {
    return this.n;
  }
  
  public Entry a(chv paramchv) {
    List<cgg> list = t();
    if (paramchv.e() >= list.size())
      return null; 
    cgo cgo = list.get(paramchv.e());
    if (paramchv.f() >= cgo.d())
      return null; 
    for (Entry entry2 : cgo.a(paramchv.f()).g(paramchv.a())) {
      Entry entry1 = entry2;
      if (entry2.c() != paramchv.b()) {
        if (Float.isNaN(paramchv.b()))
          return entry2; 
        continue;
      } 
      return entry1;
    } 
    return null;
  }
  
  public void a(cge paramcge) {
    this.k = paramcge;
    b();
  }
  
  public void a(cgk paramcgk) {
    this.n = paramcgk;
    b();
  }
  
  public void a(cgm paramcgm) {
    this.m = paramcgm;
    b();
  }
  
  public void a(cgt paramcgt) {
    this.j = paramcgt;
    b();
  }
  
  public void a(chd paramchd) {
    this.l = paramchd;
    b();
  }
  
  @Deprecated
  public boolean a(float paramFloat, int paramInt) {
    Log.e("MPAndroidChart", "removeEntry(...) not supported for CombinedData");
    return false;
  }
  
  public boolean a(cil<? extends Entry> paramcil) {
    List<cgg> list = t();
    boolean bool = false;
    Iterator<cgg> iterator = list.iterator();
    while (iterator.hasNext()) {
      boolean bool1 = ((cgo<cil<? extends Entry>>)iterator.next()).b(paramcil);
      bool = bool1;
      if (bool1) {
        bool = bool1;
        break;
      } 
    } 
    return bool;
  }
  
  public void b() {
    if (this.j != null)
      this.j.b(); 
    if (this.k != null)
      this.k.b(); 
    if (this.m != null)
      this.m.b(); 
    if (this.l != null)
      this.l.b(); 
    if (this.n != null)
      this.n.b(); 
    c();
  }
  
  @Deprecated
  public boolean b(int paramInt) {
    Log.e("MPAndroidChart", "removeDataSet(int index) not supported for CombinedData");
    return false;
  }
  
  @Deprecated
  public boolean b(Entry paramEntry, int paramInt) {
    Log.e("MPAndroidChart", "removeEntry(...) not supported for CombinedData");
    return false;
  }
  
  public void c() {
    if (this.i == null)
      this.i = new ArrayList<cil<? extends Entry>>(); 
    this.i.clear();
    this.a = -3.4028235E38F;
    this.b = Float.MAX_VALUE;
    this.c = -3.4028235E38F;
    this.d = Float.MAX_VALUE;
    this.e = -3.4028235E38F;
    this.f = Float.MAX_VALUE;
    this.g = -3.4028235E38F;
    this.h = Float.MAX_VALUE;
    for (cgo cgo : t()) {
      cgo.c();
      List<? extends cil<? extends Entry>> list = cgo.i();
      this.i.addAll(list);
      if (cgo.f() > this.a)
        this.a = cgo.f(); 
      if (cgo.e() < this.b)
        this.b = cgo.e(); 
      if (cgo.h() > this.c)
        this.c = cgo.h(); 
      if (cgo.g() < this.d)
        this.d = cgo.g(); 
      if (cgo.e > this.e)
        this.e = cgo.e; 
      if (cgo.f < this.f)
        this.f = cgo.f; 
      if (cgo.g > this.g)
        this.g = cgo.g; 
      if (cgo.h < this.h)
        this.h = cgo.h; 
    } 
  }
  
  public cgg d(int paramInt) {
    return t().get(paramInt);
  }
  
  public cgt p() {
    return this.j;
  }
  
  public cge q() {
    return this.k;
  }
  
  public chd r() {
    return this.l;
  }
  
  public cgm s() {
    return this.m;
  }
  
  public List<cgg> t() {
    ArrayList<cgt> arrayList = new ArrayList();
    if (this.j != null)
      arrayList.add(this.j); 
    if (this.k != null)
      arrayList.add(this.k); 
    if (this.l != null)
      arrayList.add(this.l); 
    if (this.m != null)
      arrayList.add(this.m); 
    if (this.n != null)
      arrayList.add(this.n); 
    return (List)arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */