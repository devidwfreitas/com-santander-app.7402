import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class nml<T> implements nlu<Set<T>> {
  private static final nlu<Set<Object>> a = nlw.a(Collections.emptySet());
  
  private final List<nne<T>> b;
  
  private final List<nne<Collection<T>>> c;
  
  private nml(List<nne<T>> paramList, List<nne<Collection<T>>> paramList1) {
    this.b = paramList;
    this.c = paramList1;
  }
  
  public static <T> nlu<Set<T>> a() {
    return (nlu)a;
  }
  
  public static <T> nmn<T> a(int paramInt1, int paramInt2) {
    return new nmn<T>(paramInt1, paramInt2, null);
  }
  
  public Set<T> c() {
    boolean bool = false;
    int j = this.b.size();
    ArrayList<Collection> arrayList = new ArrayList(this.c.size());
    int k = this.c.size();
    int i;
    for (i = 0; i < k; i++) {
      Collection collection = ((nne<Collection>)this.c.get(i)).b();
      j += collection.size();
      arrayList.add(collection);
    } 
    HashSet<?> hashSet = nlr.b(j);
    j = this.b.size();
    for (i = 0; i < j; i++)
      hashSet.add(nmd.a(((nne)this.b.get(i)).b())); 
    j = arrayList.size();
    for (i = bool; i < j; i++) {
      Iterator iterator = ((Collection)arrayList.get(i)).iterator();
      while (iterator.hasNext())
        hashSet.add(nmd.a(iterator.next())); 
    } 
    return Collections.unmodifiableSet((Set)hashSet);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nml.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */