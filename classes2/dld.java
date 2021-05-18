import android.support.annotation.WorkerThread;
import java.util.List;
import java.util.Map;

@WorkerThread
class dld implements Runnable {
  private final dlc a;
  
  private final int b;
  
  private final Throwable c;
  
  private final byte[] d;
  
  private final String e;
  
  private final Map<String, List<String>> f;
  
  private dld(String paramString, dlc paramdlc, int paramInt, Throwable paramThrowable, byte[] paramArrayOfbyte, Map<String, List<String>> paramMap) {
    csp.a(paramdlc);
    this.a = paramdlc;
    this.b = paramInt;
    this.c = paramThrowable;
    this.d = paramArrayOfbyte;
    this.e = paramString;
    this.f = paramMap;
  }
  
  public void run() {
    this.a.a(this.e, this.b, this.c, this.d, this.f);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dld.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */