import android.util.Log;

public class aqc extends Exception {
  private static final long a = 6437615481299180464L;
  
  private static final String d = "[ChatException]";
  
  private int b;
  
  private String c;
  
  public aqc() {}
  
  public aqc(int paramInt, String paramString) {
    super(paramString);
    this.b = paramInt;
    this.c = paramString;
  }
  
  public aqc(int paramInt, String paramString, Throwable paramThrowable) {
    super(paramString, paramThrowable);
    this.b = paramInt;
    this.c = paramString;
    a(paramThrowable);
  }
  
  public aqc(String paramString) {
    super(paramString);
    this.c = paramString;
  }
  
  public aqc(String paramString1, String paramString2, Throwable paramThrowable) {
    super(paramString2, paramThrowable);
    if (paramString1 != null)
      this.b = Integer.parseInt(paramString1); 
    this.c = paramString2;
    a(paramThrowable);
  }
  
  public aqc(String paramString, Throwable paramThrowable) {
    super(paramThrowable);
    this.c = paramString;
    a(paramThrowable);
  }
  
  public aqc(Throwable paramThrowable) {
    super(paramThrowable);
    a(paramThrowable);
  }
  
  private void a(Throwable paramThrowable) {
    if (paramThrowable != null && !ase.b(paramThrowable.getMessage())) {
      Log.e("[ChatException]", "==> ChatException log erro: " + ase.a(paramThrowable.getMessage()), paramThrowable);
      if (paramThrowable.getCause() != null && !ase.b(paramThrowable.getCause().getMessage()))
        Log.e("[ChatException]", "==> ChatException log cause: " + ase.a(paramThrowable.getCause().getMessage()), paramThrowable); 
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */