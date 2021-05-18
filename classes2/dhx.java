import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;

public class dhx implements dtn {
  public Location a(cpt paramcpt) {
    djh djh = dtw.a(paramcpt);
    try {
      return djh.k();
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public cpy<Status> a(cpt paramcpt, PendingIntent paramPendingIntent) {
    return (cpy<Status>)paramcpt.b(new dhz(this, paramcpt, paramPendingIntent));
  }
  
  public cpy<Status> a(cpt paramcpt, Location paramLocation) {
    return (cpy<Status>)paramcpt.b(new dic(this, paramcpt, paramLocation));
  }
  
  public cpy<Status> a(cpt paramcpt, LocationRequest paramLocationRequest, PendingIntent paramPendingIntent) {
    return (cpy<Status>)paramcpt.b(new dig(this, paramcpt, paramLocationRequest, paramPendingIntent));
  }
  
  public cpy<Status> a(cpt paramcpt, LocationRequest paramLocationRequest, dtu paramdtu, Looper paramLooper) {
    return (cpy<Status>)paramcpt.b(new dif(this, paramcpt, paramLocationRequest, paramdtu, paramLooper));
  }
  
  public cpy<Status> a(cpt paramcpt, LocationRequest paramLocationRequest, dtv paramdtv) {
    csp.a(Looper.myLooper(), "Calling thread must be a prepared Looper thread.");
    return (cpy<Status>)paramcpt.b(new dhy(this, paramcpt, paramLocationRequest, paramdtv));
  }
  
  public cpy<Status> a(cpt paramcpt, LocationRequest paramLocationRequest, dtv paramdtv, Looper paramLooper) {
    return (cpy<Status>)paramcpt.b(new die(this, paramcpt, paramLocationRequest, paramdtv, paramLooper));
  }
  
  public cpy<Status> a(cpt paramcpt, dtu paramdtu) {
    return (cpy<Status>)paramcpt.b(new dia(this, paramcpt, paramdtu));
  }
  
  public cpy<Status> a(cpt paramcpt, dtv paramdtv) {
    return (cpy<Status>)paramcpt.b(new dih(this, paramcpt, paramdtv));
  }
  
  public cpy<Status> a(cpt paramcpt, boolean paramBoolean) {
    return (cpy<Status>)paramcpt.b(new dib(this, paramcpt, paramBoolean));
  }
  
  public LocationAvailability b(cpt paramcpt) {
    djh djh = dtw.a(paramcpt);
    try {
      return djh.A();
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public cpy<Status> c(cpt paramcpt) {
    return (cpy<Status>)paramcpt.b(new did(this, paramcpt));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */