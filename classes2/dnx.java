import android.os.RemoteException;

class dnx implements Runnable {
  dnx(dno paramdno) {}
  
  public void run() {
    dkp dkp = dno.c(this.a);
    if (dkp == null) {
      this.a.u().x().a("Failed to send measurementEnabled to service");
      return;
    } 
    try {
      dkp.b(this.a.i().a(this.a.u().E()));
      dno.d(this.a);
      return;
    } catch (RemoteException remoteException) {
      this.a.u().x().a("Failed to send measurementEnabled to the service", remoteException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dnx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */