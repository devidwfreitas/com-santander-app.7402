import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;

class dbb implements ddh {
  private dbb(daz paramdaz) {}
  
  public void a(int paramInt, boolean paramBoolean) {
    daz.a(this.a).lock();
    try {
      if (daz.c(this.a) || daz.d(this.a) == null || !daz.d(this.a).b()) {
        daz.a(this.a, false);
        daz.a(this.a, paramInt, paramBoolean);
        return;
      } 
      daz.a(this.a, true);
      daz.e(this.a).a(paramInt);
      return;
    } finally {
      daz.a(this.a).unlock();
    } 
  }
  
  public void a(@Nullable Bundle paramBundle) {
    daz.a(this.a).lock();
    try {
      daz.a(this.a, paramBundle);
      daz.a(this.a, ConnectionResult.u);
      daz.b(this.a);
      return;
    } finally {
      daz.a(this.a).unlock();
    } 
  }
  
  public void a(@NonNull ConnectionResult paramConnectionResult) {
    daz.a(this.a).lock();
    try {
      daz.a(this.a, paramConnectionResult);
      daz.b(this.a);
      return;
    } finally {
      daz.a(this.a).unlock();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dbb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */