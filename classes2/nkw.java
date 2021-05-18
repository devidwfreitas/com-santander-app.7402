import android.os.AsyncTask;
import android.os.Build;
import java.util.concurrent.RejectedExecutionException;

class nkw implements Runnable {
  nkw(nkv paramnkv, Runnable paramRunnable) {}
  
  public void run() {
    if (Build.VERSION.SDK_INT >= 11)
      try {
        AsyncTask.THREAD_POOL_EXECUTOR.execute(this.a);
        return;
      } catch (RejectedExecutionException rejectedExecutionException) {
        AsyncTask.SERIAL_EXECUTOR.execute(this.a);
        return;
      }  
    (new Thread(this.a)).start();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nkw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */