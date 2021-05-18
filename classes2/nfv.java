import java.util.Iterator;
import java.util.NoSuchElementException;

class nfv implements Iterator<T> {
  private int b = 0;
  
  nfv(nfu paramnfu) {}
  
  public T a() {
    if (!hasNext())
      throw new NoSuchElementException(); 
    nfy[] arrayOfNfy = nfu.d(this.a);
    int i = this.b;
    this.b = i + 1;
    return (T)arrayOfNfy[i];
  }
  
  public boolean hasNext() {
    return (this.b < (nfu.d(this.a)).length);
  }
  
  public void remove() {
    throw new UnsupportedOperationException("Removal is not supported.");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nfv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */