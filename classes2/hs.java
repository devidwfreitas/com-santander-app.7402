import android.content.Context;

public final class hs implements hv {
  private nne<Context> b;
  
  private nne<iz> c;
  
  private nne<jd> d;
  
  private nlj<jb> e;
  
  static {
    boolean bool;
    if (!hs.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
  
  private hs(hu paramhu) {
    if (!a && paramhu == null)
      throw new AssertionError(); 
    a(paramhu);
  }
  
  public static hu a() {
    return new hu(null);
  }
  
  private void a(hu paramhu) {
    this.b = hx.a(hu.a(paramhu));
    this.c = hy.a(hu.a(paramhu));
    this.d = hz.a(hu.a(paramhu), this.c);
    this.e = jc.a(this.d);
  }
  
  public void a(jb paramjb) {
    this.e.injectMembers(paramjb);
  }
  
  public Context b() {
    return this.b.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */