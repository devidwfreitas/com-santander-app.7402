import java.util.NoSuchElementException;

public class crn<T> extends cri<T> {
  private T c;
  
  public crn(cqx<T> paramcqx) {
    super(paramcqx);
  }
  
  public T next() {
    if (!hasNext()) {
      int i = this.b;
      throw new NoSuchElementException((new StringBuilder(46)).append("Cannot advance the iterator beyond ").append(i).toString());
    } 
    this.b++;
    if (this.b == 0) {
      this.c = this.a.a(0);
      if (!(this.c instanceof crj)) {
        String str = String.valueOf(this.c.getClass());
        throw new IllegalStateException((new StringBuilder(String.valueOf(str).length() + 44)).append("DataBuffer reference of type ").append(str).append(" is not movable").toString());
      } 
    } else {
      ((crj)this.c).a(this.b);
    } 
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */