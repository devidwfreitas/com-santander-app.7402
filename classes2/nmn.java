import java.util.Collection;
import java.util.List;

public final class nmn<T> {
  private final List<nne<T>> b;
  
  private final List<nne<Collection<T>>> c;
  
  static {
    boolean bool;
    if (!nml.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
  
  private nmn(int paramInt1, int paramInt2) {
    this.b = nlr.a(paramInt1);
    this.c = nlr.a(paramInt2);
  }
  
  public nml<T> a() {
    if (!a && nlr.a(this.b))
      throw new AssertionError("Codegen error?  Duplicates in the provider list"); 
    if (!a && nlr.a(this.c))
      throw new AssertionError("Codegen error?  Duplicates in the provider list"); 
    return new nml<T>(this.b, this.c, null);
  }
  
  public nmn<T> a(nne<? extends T> paramnne) {
    if (!a && paramnne == null)
      throw new AssertionError("Codegen error? Null provider"); 
    this.b.add(paramnne);
    return this;
  }
  
  public nmn<T> b(nne<? extends Collection<? extends T>> paramnne) {
    if (!a && paramnne == null)
      throw new AssertionError("Codegen error? Null provider"); 
    this.c.add(paramnne);
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nmn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */