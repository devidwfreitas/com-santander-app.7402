import android.os.Bundle;
import android.support.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;

class dcb implements cpv, cpw {
  private dcb(dbs paramdbs) {}
  
  public void a(int paramInt) {}
  
  public void a(Bundle paramBundle) {
    dbs.f(this.c).a(new dbz(this.c));
  }
  
  public void a(@NonNull ConnectionResult paramConnectionResult) {
    dbs.c(this.c).lock();
    try {
      if (dbs.b(this.c, paramConnectionResult)) {
        dbs.i(this.c);
        dbs.j(this.c);
      } else {
        dbs.a(this.c, paramConnectionResult);
      } 
      return;
    } finally {
      dbs.c(this.c).unlock();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dcb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */