import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

final class elx extends AbstractSet<Map.Entry<K, V>> {
  elx(elt paramelt) {}
  
  public void clear() {
    this.a.clear();
  }
  
  public boolean contains(Object paramObject) {
    return (paramObject instanceof Map.Entry && this.a.a((Map.Entry<?, ?>)paramObject) != null);
  }
  
  public Iterator<Map.Entry<K, V>> iterator() {
    return (Iterator<Map.Entry<K, V>>)new ely(this);
  }
  
  public boolean remove(Object paramObject) {
    if (paramObject instanceof Map.Entry) {
      paramObject = this.a.a((Map.Entry<?, ?>)paramObject);
      if (paramObject != null) {
        this.a.a((emc)paramObject, true);
        return true;
      } 
    } 
    return false;
  }
  
  public int size() {
    return this.a.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\elx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */