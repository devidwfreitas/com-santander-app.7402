import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;

public interface dtn {
  @Deprecated
  public static final String a = "com.google.android.location.LOCATION";
  
  public static final String b = "mockLocation";
  
  @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
  Location a(cpt paramcpt);
  
  cpy<Status> a(cpt paramcpt, PendingIntent paramPendingIntent);
  
  @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
  cpy<Status> a(cpt paramcpt, Location paramLocation);
  
  @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
  cpy<Status> a(cpt paramcpt, LocationRequest paramLocationRequest, PendingIntent paramPendingIntent);
  
  @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
  cpy<Status> a(cpt paramcpt, LocationRequest paramLocationRequest, dtu paramdtu, Looper paramLooper);
  
  @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
  cpy<Status> a(cpt paramcpt, LocationRequest paramLocationRequest, dtv paramdtv);
  
  @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
  cpy<Status> a(cpt paramcpt, LocationRequest paramLocationRequest, dtv paramdtv, Looper paramLooper);
  
  cpy<Status> a(cpt paramcpt, dtu paramdtu);
  
  cpy<Status> a(cpt paramcpt, dtv paramdtv);
  
  @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
  cpy<Status> a(cpt paramcpt, boolean paramBoolean);
  
  @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
  LocationAvailability b(cpt paramcpt);
  
  cpy<Status> c(cpt paramcpt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\dtn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */