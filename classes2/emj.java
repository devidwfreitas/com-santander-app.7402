import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

abstract class emj<T> implements Iterator<T> {
  emk<K, V> b = this.e.e.d;
  
  emk<K, V> c = null;
  
  int d = this.e.d;
  
  emj(emd paramemd) {}
  
  final emk<K, V> b() {
    emk<K, V> emk1 = this.b;
    if (emk1 == this.e.e)
      throw new NoSuchElementException(); 
    if (this.e.d != this.d)
      throw new ConcurrentModificationException(); 
    this.b = emk1.d;
    this.c = emk1;
    return emk1;
  }
  
  public final boolean hasNext() {
    return (this.b != this.e.e);
  }
  
  public final void remove() {
    if (this.c == null)
      throw new IllegalStateException(); 
    this.e.a(this.c, true);
    this.c = null;
    this.d = this.e.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */