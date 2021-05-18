import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

final class fr implements fa<Void, List<TResult>> {
  fr(Collection paramCollection) {}
  
  public List<TResult> a(fd<Void> paramfd) {
    if (this.a.size() == 0)
      return Collections.emptyList(); 
    ArrayList<TResult> arrayList = new ArrayList();
    Iterator<fd> iterator = this.a.iterator();
    while (iterator.hasNext())
      arrayList.add(((fd)iterator.next()).f()); 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */