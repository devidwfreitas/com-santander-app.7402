import android.util.Log;
import java.util.concurrent.Callable;

final class buq implements Callable<bum> {
  buq(but parambut) {}
  
  public bum a() {
    int i;
    bum bum = new bum();
    try {
      buf buf = bva.a(bhv.h(), this.a);
      buf.a();
      try {
        buf.b();
        try {
          Thread.sleep(this.a.m());
        } catch (Exception exception) {}
        buf.c();
        i = buf.d();
      } finally {
        buf.c();
      } 
    } catch (Exception exception) {
      bun.a("Exception scanning for bluetooth beacons", exception);
      bum.f = false;
      return bum;
    } 
    if (bhv.d())
      Log.d("LocationPackageManager", String.format("Bluetooth LE scan failed with error: %d", new Object[] { Integer.valueOf(i) })); 
    bum.f = false;
    return bum;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\buq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */