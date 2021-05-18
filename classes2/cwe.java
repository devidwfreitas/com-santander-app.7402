import android.os.Process;
import java.io.Closeable;
import java.io.IOException;

public class cwe {
  private static String a = null;
  
  private static final int b = Process.myPid();
  
  public static String a() {
    if (a == null)
      a = a(b); 
    return a;
  }
  
  static String a(int paramInt) {
    Exception exception;
    Closeable closeable;
    if (paramInt <= 0)
      return null; 
    try {
    
    } catch (IOException iOException) {
      return null;
    } finally {
      Exception exception1 = null;
      closeable = null;
    } 
    cvz.a(closeable);
    throw exception;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */