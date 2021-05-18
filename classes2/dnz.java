import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzatg;

class dnz implements Runnable {
  dnz(dno paramdno, boolean paramBoolean1, boolean paramBoolean2, zzatg paramzzatg1, zzatg paramzzatg2) {}
  
  public void run() {
    dkp dkp = dno.c(this.e);
    if (dkp == null) {
      this.e.u().x().a("Discarding data. Failed to send conditional user property to service");
      return;
    } 
    if (this.a) {
      zzatg zzatg1;
      dno dno1 = this.e;
      if (this.b) {
        zzatg1 = null;
      } else {
        zzatg1 = this.c;
      } 
      dno1.a(dkp, (zza)zzatg1);
    } else {
      try {
        if (TextUtils.isEmpty(this.d.b)) {
          dkp.a(this.c, this.e.i().a(this.e.u().E()));
        } else {
          dkp.a(this.c);
        } 
      } catch (RemoteException remoteException) {
        this.e.u().x().a("Failed to send conditional user property to the service", remoteException);
      } 
    } 
    dno.d(this.e);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dnz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */