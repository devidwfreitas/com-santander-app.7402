import java.util.AbstractSet;
import java.util.Iterator;

final class elz extends AbstractSet<K> {
  elz(elt paramelt) {}
  
  public void clear() {
    this.a.clear();
  }
  
  public boolean contains(Object paramObject) {
    return this.a.containsKey(paramObject);
  }
  
  public Iterator<K> iterator() {
    return (Iterator<K>)new ema(this);
  }
  
  public boolean remove(Object paramObject) {
    return (this.a.b(paramObject) != null);
  }
  
  public int size() {
    return this.a.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\elz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */