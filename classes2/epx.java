public final class epx extends eql {
  private static final epx c = new epx();
  
  static {
    c.setStackTrace(b);
  }
  
  private epx() {}
  
  private epx(Throwable paramThrowable) {
    super(paramThrowable);
  }
  
  public static epx a() {
    return a ? new epx() : c;
  }
  
  public static epx a(Throwable paramThrowable) {
    return a ? new epx(paramThrowable) : c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\epx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */