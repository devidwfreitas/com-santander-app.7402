public final class jc implements nlj<jb> {
  private final nne<jd> b;
  
  static {
    boolean bool;
    if (!jc.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
  
  public jc(nne<jd> paramnne) {
    if (!a && paramnne == null)
      throw new AssertionError(); 
    this.b = paramnne;
  }
  
  public static nlj<jb> a(nne<jd> paramnne) {
    return new jc(paramnne);
  }
  
  public void a(jb paramjb) {
    if (paramjb == null)
      throw new NullPointerException("Cannot inject members into a null reference"); 
    paramjb.a = this.b.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */