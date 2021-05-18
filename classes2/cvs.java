import android.os.SystemClock;

public class cvs implements cvo {
  private static cvs a = new cvs();
  
  public static cvo d() {
    return a;
  }
  
  public long a() {
    return System.currentTimeMillis();
  }
  
  public long b() {
    return SystemClock.elapsedRealtime();
  }
  
  public long c() {
    return System.nanoTime();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */