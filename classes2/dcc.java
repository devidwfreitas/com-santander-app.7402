import android.support.annotation.WorkerThread;

abstract class dcc implements Runnable {
  private dcc(dbs paramdbs) {}
  
  @WorkerThread
  protected abstract void a();
  
  @WorkerThread
  public void run() {
    dbs.c(this.b).lock();
    try {
      boolean bool = Thread.interrupted();
      if (bool)
        return; 
      a();
      return;
    } catch (RuntimeException runtimeException) {
      dbs.d(this.b).a(runtimeException);
      return;
    } finally {
      dbs.c(this.b).unlock();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */