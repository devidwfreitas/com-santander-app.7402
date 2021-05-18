import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;

public final class dlk {
  private final String b;
  
  private final long c;
  
  private boolean d;
  
  private long e;
  
  public dlk(dlh paramdlh, String paramString, long paramLong) {
    csp.a(paramString);
    this.b = paramString;
    this.c = paramLong;
  }
  
  @WorkerThread
  private void b() {
    if (this.d)
      return; 
    this.d = true;
    this.e = dlh.a(this.a).getLong(this.b, this.c);
  }
  
  @WorkerThread
  public long a() {
    b();
    return this.e;
  }
  
  @WorkerThread
  public void a(long paramLong) {
    SharedPreferences.Editor editor = dlh.a(this.a).edit();
    editor.putLong(this.b, paramLong);
    editor.apply();
    this.e = paramLong;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dlk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */