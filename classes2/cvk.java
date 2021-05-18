import android.support.v4.util.ArrayMap;
import android.support.v4.util.SimpleArrayMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;

public class cvk<E> extends AbstractSet<E> {
  private final ArrayMap<E, E> a = new ArrayMap();
  
  public cvk() {}
  
  public cvk(int paramInt) {}
  
  public cvk(Collection<E> paramCollection) {
    this(paramCollection.size());
    addAll(paramCollection);
  }
  
  public boolean a(cvk<? extends E> paramcvk) {
    int i = size();
    this.a.putAll((SimpleArrayMap)paramcvk.a);
    return (size() > i);
  }
  
  public boolean add(E paramE) {
    if (this.a.containsKey(paramE))
      return false; 
    this.a.put(paramE, paramE);
    return true;
  }
  
  public boolean addAll(Collection<? extends E> paramCollection) {
    return (paramCollection instanceof cvk) ? a((cvk<? extends E>)paramCollection) : super.addAll(paramCollection);
  }
  
  public void clear() {
    this.a.clear();
  }
  
  public boolean contains(Object paramObject) {
    return this.a.containsKey(paramObject);
  }
  
  public Iterator<E> iterator() {
    return this.a.keySet().iterator();
  }
  
  public boolean remove(Object paramObject) {
    if (!this.a.containsKey(paramObject))
      return false; 
    this.a.remove(paramObject);
    return true;
  }
  
  public int size() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */