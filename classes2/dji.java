import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.Status;

final class dji extends dit {
  private dao<Status> a;
  
  public dji(dao<Status> paramdao) {
    this.a = paramdao;
  }
  
  public void a(int paramInt, PendingIntent paramPendingIntent) {
    Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByPendingIntentResult");
  }
  
  public void a(int paramInt, String[] paramArrayOfString) {
    if (this.a == null) {
      Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
      return;
    } 
    Status status = dub.b(dub.a(paramInt));
    this.a.a(status);
    this.a = null;
  }
  
  public void b(int paramInt, String[] paramArrayOfString) {
    Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByRequestIdsResult");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dji.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */