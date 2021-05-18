import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class coa extends Thread {
  CountDownLatch a;
  
  boolean b;
  
  private WeakReference<AdvertisingIdClient> c;
  
  private long d;
  
  public coa(AdvertisingIdClient paramAdvertisingIdClient, long paramLong) {
    this.c = new WeakReference<AdvertisingIdClient>(paramAdvertisingIdClient);
    this.d = paramLong;
    this.a = new CountDownLatch(1);
    this.b = false;
    start();
  }
  
  private void c() {
    AdvertisingIdClient advertisingIdClient = this.c.get();
    if (advertisingIdClient != null) {
      advertisingIdClient.c();
      this.b = true;
    } 
  }
  
  public void a() {
    this.a.countDown();
  }
  
  public boolean b() {
    return this.b;
  }
  
  public void run() {
    try {
      if (!this.a.await(this.d, TimeUnit.MILLISECONDS))
        c(); 
      return;
    } catch (InterruptedException interruptedException) {
      c();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\coa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */