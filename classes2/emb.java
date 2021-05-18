import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class emb<T> implements Iterator<T> {
  emc<K, V> b = this.e.c.d;
  
  emc<K, V> c = null;
  
  int d = this.e.e;
  
  emb(elt paramelt) {}
  
  final emc<K, V> b() {
    emc<K, V> emc1 = this.b;
    if (emc1 == this.e.c)
      throw new NoSuchElementException(); 
    if (this.e.e != this.d)
      throw new ConcurrentModificationException(); 
    this.b = emc1.d;
    this.c = emc1;
    return emc1;
  }
  
  public final boolean hasNext() {
    return (this.b != this.e.c);
  }
  
  public final void remove() {
    if (this.c == null)
      throw new IllegalStateException(); 
    this.e.a(this.c, true);
    this.c = null;
    this.d = this.e.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */