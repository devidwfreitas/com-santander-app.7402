import android.util.Log;

public class aqd extends Exception {
  private static final long a = 6437615481299180462L;
  
  private static final String d = "[ChatServiceException]";
  
  private int b;
  
  private String c;
  
  public aqd() {}
  
  public aqd(int paramInt, String paramString) {
    super(paramString);
    this.b = paramInt;
    this.c = paramString;
  }
  
  public aqd(int paramInt, String paramString, Throwable paramThrowable) {
    super(paramString, paramThrowable);
    this.b = paramInt;
    this.c = paramString;
    a(paramThrowable);
  }
  
  public aqd(String paramString) {
    super(paramString);
    this.c = paramString;
  }
  
  public aqd(String paramString1, String paramString2, Throwable paramThrowable) {
    super(paramString2, paramThrowable);
    if (paramString1 != null)
      this.b = Integer.parseInt(paramString1); 
    this.c = paramString2;
    a(paramThrowable);
  }
  
  public aqd(String paramString, Throwable paramThrowable) {
    super(paramThrowable);
    this.c = paramString;
    a(paramThrowable);
  }
  
  public aqd(Throwable paramThrowable) {
    super(paramThrowable);
    a(paramThrowable);
  }
  
  private void a(Throwable paramThrowable) {
    if (paramThrowable != null && !ase.b(paramThrowable.getMessage())) {
      Log.e("[ChatServiceException]", "==> Service log erro: " + ase.a(paramThrowable.getMessage()), paramThrowable);
      if (paramThrowable.getCause() != null && !ase.b(paramThrowable.getCause().getMessage()))
        Log.e("[ChatServiceException]", "==> Service log cause: " + ase.a(paramThrowable.getCause().getMessage()), paramThrowable); 
    } 
  }
  
  public int a() {
    return this.b;
  }
  
  public void a(int paramInt) {
    this.b = paramInt;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public String b() {
    return this.c;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */