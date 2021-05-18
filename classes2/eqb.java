public final class eqb extends eql {
  private static final eqb c = new eqb();
  
  static {
    c.setStackTrace(b);
  }
  
  private eqb() {}
  
  private eqb(Throwable paramThrowable) {
    super(paramThrowable);
  }
  
  public static eqb a() {
    return a ? new eqb() : c;
  }
  
  public static eqb a(Throwable paramThrowable) {
    return a ? new eqb(paramThrowable) : c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */