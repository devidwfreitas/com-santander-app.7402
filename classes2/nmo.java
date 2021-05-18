public final class nmo<T> implements nlh<T>, nne<T> {
  private static final Object b = new Object();
  
  private volatile nne<T> c;
  
  private volatile Object d = b;
  
  private nmo(nne<T> paramnne) {
    if (!a && paramnne == null)
      throw new AssertionError(); 
    this.c = paramnne;
  }
  
  public static <T> nne<T> a(nne<T> paramnne) {
    return (paramnne instanceof nmo || paramnne instanceof nlt) ? paramnne : new nmo<T>(nmd.<nne<T>>a(paramnne));
  }
  
  public T b() {
    nne<T> nne1 = this.c;
    if (this.d == b) {
      this.d = nne1.b();
      this.c = null;
    } 
    return (T)this.d;
  }
  
  static {
    boolean bool;
    if (!nmo.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nmo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */