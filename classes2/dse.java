public class dse<T> {
  public final T a = null;
  
  public final dps b = null;
  
  public final dsl c;
  
  public boolean d = false;
  
  private dse(dsl paramdsl) {
    this.c = paramdsl;
  }
  
  private dse(T paramT, dps paramdps) {
    this.c = null;
  }
  
  public static <T> dse<T> a(dsl paramdsl) {
    return new dse<T>(paramdsl);
  }
  
  public static <T> dse<T> a(T paramT, dps paramdps) {
    return new dse<T>(paramT, paramdps);
  }
  
  public boolean a() {
    return (this.c == null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */