public final class hz implements nlu<jd> {
  private final hw b;
  
  private final nne<iz> c;
  
  static {
    boolean bool;
    if (!hz.class.desiredAssertionStatus()) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
  
  public hz(hw paramhw, nne<iz> paramnne) {
    if (!a && paramhw == null)
      throw new AssertionError(); 
    this.b = paramhw;
    if (!a && paramnne == null)
      throw new AssertionError(); 
    this.c = paramnne;
  }
  
  public static nlu<jd> a(hw paramhw, nne<iz> paramnne) {
    return new hz(paramhw, paramnne);
  }
  
  public jd a() {
    return nmd.<jd>a(this.b.a(this.c.b()), "Cannot return null from a non-@Nullable @Provides method");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */