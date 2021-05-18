import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.Status;

final class djj extends dit {
  private dao<Status> a;
  
  public djj(dao<Status> paramdao) {
    this.a = paramdao;
  }
  
  private void a(int paramInt) {
    if (this.a == null) {
      Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times");
      return;
    } 
    Status status = dub.b(dub.a(paramInt));
    this.a.a(status);
    this.a = null;
  }
  
  public void a(int paramInt, PendingIntent paramPendingIntent) {
    a(paramInt);
  }
  
  public void a(int paramInt, String[] paramArrayOfString) {
    Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
  }
  
  public void b(int paramInt, String[] paramArrayOfString) {
    a(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */