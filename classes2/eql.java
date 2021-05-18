public abstract class eql extends Exception {
  protected static final boolean a;
  
  protected static final StackTraceElement[] b = new StackTraceElement[0];
  
  eql() {}
  
  eql(Throwable paramThrowable) {
    super(paramThrowable);
  }
  
  public final Throwable fillInStackTrace() {
    return null;
  }
  
  static {
    boolean bool;
    if (System.getProperty("surefire.test.class.path") != null) {
      bool = true;
    } else {
      bool = false;
    } 
    a = bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eql.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */