import android.app.PendingIntent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.zzt;
import java.util.List;

public class dil implements dtr {
  public cpy<Status> a(cpt paramcpt, PendingIntent paramPendingIntent) {
    return a(paramcpt, zzt.a(paramPendingIntent));
  }
  
  public cpy<Status> a(cpt paramcpt, GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent) {
    return (cpy<Status>)paramcpt.b(new dim(this, paramcpt, paramGeofencingRequest, paramPendingIntent));
  }
  
  public cpy<Status> a(cpt paramcpt, zzt paramzzt) {
    return (cpy<Status>)paramcpt.b(new din(this, paramcpt, paramzzt));
  }
  
  public cpy<Status> a(cpt paramcpt, List<String> paramList) {
    return a(paramcpt, zzt.a(paramList));
  }
  
  @Deprecated
  public cpy<Status> a(cpt paramcpt, List<dto> paramList, PendingIntent paramPendingIntent) {
    dtt dtt = new dtt();
    dtt.a(paramList);
    dtt.a(5);
    return a(paramcpt, dtt.a(), paramPendingIntent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\dil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */