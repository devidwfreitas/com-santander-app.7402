import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;

class mgg extends Handler {
  mgg(mgf parammgf) {}
  
  public void handleMessage(Message paramMessage) {
    synchronized (this.a) {
      if (!mgf.a(this.a)) {
        long l = mgf.b(this.a) - SystemClock.elapsedRealtime();
        if (l <= 0L) {
          this.a.a();
        } else if (l < mgf.c(this.a)) {
          sendMessageDelayed(obtainMessage(1), l);
        } else {
          long l1 = SystemClock.elapsedRealtime();
          this.a.a(l);
          for (l = mgf.c(this.a) + l1 - SystemClock.elapsedRealtime(); l < 0L; l += mgf.c(this.a));
          if (!mgf.d(this.a))
            sendMessageDelayed(obtainMessage(1), l); 
        } 
      } 
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mgg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */