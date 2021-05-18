public class bhp extends RuntimeException {
  static final long b = 1L;
  
  public bhp() {}
  
  public bhp(String paramString) {
    super(paramString);
  }
  
  public bhp(String paramString, Throwable paramThrowable) {
    super(paramString, paramThrowable);
  }
  
  public bhp(String paramString, Object... paramVarArgs) {
    this(String.format(paramString, paramVarArgs));
  }
  
  public bhp(Throwable paramThrowable) {
    super(paramThrowable);
  }
  
  public String toString() {
    return getMessage();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */