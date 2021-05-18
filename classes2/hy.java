public final class hy implements nlu<iz> {
  private final hw b;
  
  static {
    boolean bool;
    if (!hy.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
  
  public hy(hw paramhw) {
    if (!a && paramhw == null)
      throw new AssertionError(); 
    this.b = paramhw;
  }
  
  public static nlu<iz> a(hw paramhw) {
    return new hy(paramhw);
  }
  
  public iz a() {
    return nmd.<iz>a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */