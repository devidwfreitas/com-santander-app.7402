import android.app.PendingIntent;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.GeofencingRequest;
import java.util.List;

public interface dtr {
  cpy<Status> a(cpt paramcpt, PendingIntent paramPendingIntent);
  
  @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
  cpy<Status> a(cpt paramcpt, GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent);
  
  cpy<Status> a(cpt paramcpt, List<String> paramList);
  
  @Deprecated
  @RequiresPermission("android.permission.ACCESS_FINE_LOCATION")
  cpy<Status> a(cpt paramcpt, List<dto> paramList, PendingIntent paramPendingIntent);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\dtr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */