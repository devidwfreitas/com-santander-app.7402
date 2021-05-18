import java.io.IOException;

public final class ept extends IOException {
  private static final long a = 1L;
  
  public ept(String paramString) {
    super(paramString);
  }
  
  public ept(String paramString, Throwable paramThrowable) {
    super(paramString);
    initCause(paramThrowable);
  }
  
  public ept(Throwable paramThrowable) {
    initCause(paramThrowable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ept.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */