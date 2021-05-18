import android.os.RemoteException;

class dnv implements Runnable {
  dnv(dno paramdno, egk paramegk) {}
  
  public void run() {
    dkp dkp = dno.c(this.b);
    if (dkp == null) {
      this.b.u().x().a("Failed to send current screen to service");
      return;
    } 
    try {
      if (this.a == null) {
        dkp.a(0L, (String)null, (String)null, this.b.n().getPackageName());
      } else {
        dkp.a(this.a.d, this.a.b, this.a.c, this.b.n().getPackageName());
      } 
      dno.d(this.b);
      return;
    } catch (RemoteException remoteException) {
      this.b.u().x().a("Failed to send current screen to the service", remoteException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dnv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */