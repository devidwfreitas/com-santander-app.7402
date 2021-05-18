import android.support.annotation.NonNull;

public class ehz extends Exception {
  @Deprecated
  protected ehz() {}
  
  public ehz(@NonNull String paramString) {
    super(csp.a(paramString, "Detail message must not be empty"));
  }
  
  public ehz(@NonNull String paramString, Throwable paramThrowable) {
    super(csp.a(paramString, "Detail message must not be empty"), paramThrowable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ehz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */