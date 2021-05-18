import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzatq;

class dny implements Runnable {
  dny(dno paramdno, boolean paramBoolean1, boolean paramBoolean2, zzatq paramzzatq, String paramString) {}
  
  public void run() {
    dkp dkp = dno.c(this.e);
    if (dkp == null) {
      this.e.u().x().a("Discarding data. Failed to send event to service");
      return;
    } 
    if (this.a) {
      zzatq zzatq1;
      dno dno1 = this.e;
      if (this.b) {
        zzatq1 = null;
      } else {
        zzatq1 = this.c;
      } 
      dno1.a(dkp, (zza)zzatq1);
    } else {
      try {
        if (TextUtils.isEmpty(this.d)) {
          dkp.a(this.c, this.e.i().a(this.e.u().E()));
        } else {
          dkp.a(this.c, this.d, this.e.u().E());
        } 
      } catch (RemoteException remoteException) {
        this.e.u().x().a("Failed to send event to the service", remoteException);
      } 
    } 
    dno.d(this.e);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dny.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */