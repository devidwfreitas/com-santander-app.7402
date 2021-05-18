import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class hfm implements hfz {
  hfm(hfl paramhfl) {}
  
  public String a() {
    return hfl.b(this.a);
  }
  
  public String b() {
    return hfl.c(this.a);
  }
  
  public List<hga> c() {
    ArrayList<hfp> arrayList = new ArrayList();
    Iterator<hfp> iterator = hfl.d(this.a).iterator();
    while (iterator.hasNext())
      arrayList.add(iterator.next()); 
    return (List)arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hfm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */