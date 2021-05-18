import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzauq;

class dnr implements Runnable {
  dnr(dno paramdno, boolean paramBoolean, zzauq paramzzauq) {}
  
  public void run() {
    zzauq zzauq1;
    dkp dkp = dno.c(this.c);
    if (dkp == null) {
      this.c.u().x().a("Discarding data. Failed to set user attribute");
      return;
    } 
    dno dno1 = this.c;
    if (this.a) {
      zzauq1 = null;
    } else {
      zzauq1 = this.b;
    } 
    dno1.a(dkp, (zza)zzauq1);
    dno.d(this.c);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dnr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */