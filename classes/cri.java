import java.util.Iterator;
import java.util.NoSuchElementException;

public class cri<T> implements Iterator<T> {
  protected final cqx<T> a;
  
  protected int b;
  
  public cri(cqx<T> paramcqx) {
    this.a = (cqx<T>)csp.a(paramcqx);
    this.b = -1;
  }
  
  public boolean hasNext() {
    return (this.b < this.a.a() - 1);
  }
  
  public T next() {
    if (!hasNext()) {
      int j = this.b;
      throw new NoSuchElementException((new StringBuilder(46)).append("Cannot advance the iterator beyond ").append(j).toString());
    } 
    cqx<T> cqx1 = this.a;
    int i = this.b + 1;
    this.b = i;
    return cqx1.a(i);
  }
  
  public void remove() {
    throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cri.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */