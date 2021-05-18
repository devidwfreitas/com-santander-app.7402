import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import java.util.List;

public class fdl {
  private static final String a = fdl.class.getSimpleName();
  
  private fec b;
  
  private HandlerThread c;
  
  private Handler d;
  
  private fdi e;
  
  private Handler f;
  
  private Rect g;
  
  private boolean h = false;
  
  private final Object i = new Object();
  
  private final Handler.Callback j = new fdm(this);
  
  private final fev k = new fdn(this);
  
  public fdl(fec paramfec, fdi paramfdi, Handler paramHandler) {
    fdw.a();
    this.b = paramfec;
    this.e = paramfdi;
    this.f = paramHandler;
  }
  
  private void b(fdv paramfdv) {
    long l = System.currentTimeMillis();
    eqm eqm = null;
    paramfdv.a(this.g);
    eqd eqd = a(paramfdv);
    if (eqd != null)
      eqm = this.e.a(eqd); 
    if (eqm != null) {
      long l1 = System.currentTimeMillis();
      Log.d(a, "Found barcode in " + (l1 - l) + " ms");
      if (this.f != null) {
        fcq fcq = new fcq(eqm, paramfdv);
        Message message = Message.obtain(this.f, erz.zxing_decode_succeeded, fcq);
        message.setData(new Bundle());
        message.sendToTarget();
      } 
    } else if (this.f != null) {
      Message.obtain(this.f, erz.zxing_decode_failed).sendToTarget();
    } 
    if (this.f != null) {
      List<eqo> list = this.e.b();
      Message.obtain(this.f, erz.zxing_possible_result_points, list).sendToTarget();
    } 
    e();
  }
  
  private void e() {
    if (this.b.g())
      this.b.a(this.k); 
  }
  
  protected eqd a(fdv paramfdv) {
    return (this.g == null) ? null : paramfdv.g();
  }
  
  public fdi a() {
    return this.e;
  }
  
  public void a(Rect paramRect) {
    this.g = paramRect;
  }
  
  public void a(fdi paramfdi) {
    this.e = paramfdi;
  }
  
  public Rect b() {
    return this.g;
  }
  
  public void c() {
    fdw.a();
    this.c = new HandlerThread(a);
    this.c.start();
    this.d = new Handler(this.c.getLooper(), this.j);
    this.h = true;
    e();
  }
  
  public void d() {
    fdw.a();
    synchronized (this.i) {
      this.h = false;
      this.d.removeCallbacksAndMessages(null);
      this.c.quit();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fdl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */