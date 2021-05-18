import android.os.Looper;

class dkg implements Runnable {
  dkg(dkf paramdkf) {}
  
  public void run() {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      dkf.a(this.a).h().a(this);
      return;
    } 
    boolean bool = this.a.b();
    dkf.a(this.a, 0L);
    if (bool && dkf.b(this.a)) {
      this.a.a();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */