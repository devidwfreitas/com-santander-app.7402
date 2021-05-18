import android.os.RemoteException;
import com.google.android.gms.common.internal.safeparcel.zza;

class dnu implements Runnable {
  dnu(dno paramdno) {}
  
  public void run() {
    dkp dkp = dno.c(this.a);
    if (dkp == null) {
      this.a.u().x().a("Discarding data. Failed to send app launch");
      return;
    } 
    try {
      dkp.a(this.a.i().a(this.a.u().E()));
      this.a.a(dkp, (zza)null);
      dno.d(this.a);
      return;
    } catch (RemoteException remoteException) {
      this.a.u().x().a("Failed to send app launch to the service", remoteException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dnu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */