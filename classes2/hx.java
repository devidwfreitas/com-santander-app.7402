import android.content.Context;

public final class hx implements nlu<Context> {
  private final hw b;
  
  static {
    boolean bool;
    if (!hx.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
  
  public hx(hw paramhw) {
    if (!a && paramhw == null)
      throw new AssertionError(); 
    this.b = paramhw;
  }
  
  public static nlu<Context> a(hw paramhw) {
    return new hx(paramhw);
  }
  
  public Context a() {
    return nmd.<Context>a(this.b.b(), "Cannot return null from a non-@Nullable @Provides method");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */