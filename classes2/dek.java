import android.support.annotation.WorkerThread;

class dek implements Runnable {
  dek(dej paramdej, cqg paramcqg) {}
  
  @WorkerThread
  public void run() {
    try {
      dat.a.set(Boolean.valueOf(true));
      cpy cpy = dej.a(this.b).a(this.a);
      dej.b(this.b).sendMessage(dej.b(this.b).obtainMessage(0, cpy));
      return;
    } catch (RuntimeException runtimeException) {
      dej.b(this.b).sendMessage(dej.b(this.b).obtainMessage(1, runtimeException));
      return;
    } finally {
      dat.a.set(Boolean.valueOf(false));
      dej.a(this.b, this.a);
      cpt cpt = dej.c(this.b).get();
      if (cpt != null)
        cpt.b(this.b); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */