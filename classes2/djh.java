import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzasi;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.zzt;

public class djh extends dhu {
  private final djb f;
  
  public djh(Context paramContext, Looper paramLooper, cpv paramcpv, cpw paramcpw, String paramString) {
    this(paramContext, paramLooper, paramcpv, paramcpw, paramString, ctn.a(paramContext));
  }
  
  public djh(Context paramContext, Looper paramLooper, cpv paramcpv, cpw paramcpw, String paramString, ctn paramctn) {
    super(paramContext, paramLooper, paramcpv, paramcpw, paramString, paramctn);
    this.f = new djb(paramContext, this.e);
  }
  
  public LocationAvailability A() {
    return this.f.b();
  }
  
  public void a() {
    synchronized (this.f) {
      boolean bool = b();
      if (bool)
        try {
          this.f.c();
          this.f.d();
        } catch (Exception exception) {} 
      super.a();
      return;
    } 
  }
  
  public void a(long paramLong, PendingIntent paramPendingIntent) {
    boolean bool;
    u();
    csp.a(paramPendingIntent);
    if (paramLong >= 0L) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.b(bool, "detectionIntervalMillis must be >= 0");
    w().a(paramLong, true, paramPendingIntent);
  }
  
  public void a(PendingIntent paramPendingIntent) {
    u();
    csp.a(paramPendingIntent);
    w().a(paramPendingIntent);
  }
  
  public void a(PendingIntent paramPendingIntent, dip paramdip) {
    this.f.a(paramPendingIntent, paramdip);
  }
  
  public void a(Location paramLocation) {
    this.f.a(paramLocation);
  }
  
  public void a(zzasi paramzzasi, ddn<dtu> paramddn, dip paramdip) {
    synchronized (this.f) {
      this.f.a(paramzzasi, paramddn, paramdip);
      return;
    } 
  }
  
  public void a(GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent, dao<Status> paramdao) {
    u();
    csp.a(paramGeofencingRequest, "geofencingRequest can't be null.");
    csp.a(paramPendingIntent, "PendingIntent must be specified.");
    csp.a(paramdao, "ResultHolder not provided.");
    dji dji = new dji(paramdao);
    w().a(paramGeofencingRequest, paramPendingIntent, dji);
  }
  
  public void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent, dip paramdip) {
    this.f.a(paramLocationRequest, paramPendingIntent, paramdip);
  }
  
  public void a(LocationRequest paramLocationRequest, ddn<dtv> paramddn, dip paramdip) {
    synchronized (this.f) {
      this.f.a(paramLocationRequest, paramddn, paramdip);
      return;
    } 
  }
  
  public void a(LocationSettingsRequest paramLocationSettingsRequest, dao<LocationSettingsResult> paramdao, String paramString) {
    boolean bool1;
    boolean bool2 = true;
    u();
    if (paramLocationSettingsRequest != null) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.b(bool1, "locationSettingsRequest can't be null nor empty.");
    if (paramdao != null) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    csp.b(bool1, "listener can't be null.");
    djk djk = new djk(paramdao);
    w().a(paramLocationSettingsRequest, djk, paramString);
  }
  
  public void a(zzt paramzzt, dao<Status> paramdao) {
    u();
    csp.a(paramzzt, "removeGeofencingRequest can't be null.");
    csp.a(paramdao, "ResultHolder not provided.");
    djj djj = new djj(paramdao);
    w().a(paramzzt, djj);
  }
  
  public void a(ddp<dtv> paramddp, dip paramdip) {
    this.f.a(paramddp, paramdip);
  }
  
  public void a(dip paramdip) {
    this.f.a(paramdip);
  }
  
  public void a(boolean paramBoolean) {
    this.f.a(paramBoolean);
  }
  
  public void b(ddp<dtu> paramddp, dip paramdip) {
    this.f.b(paramddp, paramdip);
  }
  
  public Location k() {
    return this.f.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */