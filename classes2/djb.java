import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.internal.zzasi;
import com.google.android.gms.internal.zzask;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import java.util.HashMap;
import java.util.Map;

public class djb {
  private final djo<div> a;
  
  private final Context b;
  
  private ContentProviderClient c = null;
  
  private boolean d = false;
  
  private final Map<ddp<dtv>, djf> e = new HashMap<ddp<dtv>, djf>();
  
  private final Map<ddp<dtu>, djc> f = new HashMap<ddp<dtu>, djc>();
  
  public djb(Context paramContext, djo<div> paramdjo) {
    this.b = paramContext;
    this.a = paramdjo;
  }
  
  private djf a(ddn<dtv> paramddn) {
    synchronized (this.e) {
      djf djf2 = this.e.get(paramddn.c());
      djf djf1 = djf2;
      if (djf2 == null)
        djf1 = new djf(paramddn); 
      this.e.put(paramddn.c(), djf1);
      return djf1;
    } 
  }
  
  private djc b(ddn<dtu> paramddn) {
    synchronized (this.f) {
      djc djc2 = this.f.get(paramddn.c());
      djc djc1 = djc2;
      if (djc2 == null)
        djc1 = new djc(paramddn); 
      this.f.put(paramddn.c(), djc1);
      return djc1;
    } 
  }
  
  public Location a() {
    this.a.a();
    try {
      return ((div)this.a.c()).b(this.b.getPackageName());
    } catch (RemoteException remoteException) {
      throw new IllegalStateException(remoteException);
    } 
  }
  
  public void a(PendingIntent paramPendingIntent, dip paramdip) {
    this.a.a();
    ((div)this.a.c()).a(zzask.a(paramPendingIntent, paramdip));
  }
  
  public void a(Location paramLocation) {
    this.a.a();
    ((div)this.a.c()).a(paramLocation);
  }
  
  public void a(zzasi paramzzasi, ddn<dtu> paramddn, dip paramdip) {
    this.a.a();
    djc djc = b(paramddn);
    ((div)this.a.c()).a(zzask.a(paramzzasi, djc, paramdip));
  }
  
  public void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent, dip paramdip) {
    this.a.a();
    ((div)this.a.c()).a(zzask.a(zzasi.a(paramLocationRequest), paramPendingIntent, paramdip));
  }
  
  public void a(LocationRequest paramLocationRequest, ddn<dtv> paramddn, dip paramdip) {
    this.a.a();
    djf djf = a(paramddn);
    ((div)this.a.c()).a(zzask.a(zzasi.a(paramLocationRequest), djf, paramdip));
  }
  
  public void a(ddp<dtv> paramddp, dip paramdip) {
    this.a.a();
    csp.a(paramddp, "Invalid null listener key");
    synchronized (this.e) {
      djf djf = this.e.remove(paramddp);
      if (djf != null) {
        djf.a();
        ((div)this.a.c()).a(zzask.a(djf, paramdip));
      } 
      return;
    } 
  }
  
  public void a(dip paramdip) {
    this.a.a();
    ((div)this.a.c()).a(paramdip);
  }
  
  public void a(boolean paramBoolean) {
    this.a.a();
    ((div)this.a.c()).a(paramBoolean);
    this.d = paramBoolean;
  }
  
  public LocationAvailability b() {
    this.a.a();
    try {
      return ((div)this.a.c()).c(this.b.getPackageName());
    } catch (RemoteException remoteException) {
      throw new IllegalStateException(remoteException);
    } 
  }
  
  public void b(ddp<dtu> paramddp, dip paramdip) {
    this.a.a();
    csp.a(paramddp, "Invalid null listener key");
    synchronized (this.f) {
      djc djc = this.f.remove(paramddp);
      if (djc != null) {
        djc.a();
        ((div)this.a.c()).a(zzask.a(djc, paramdip));
      } 
      return;
    } 
  }
  
  public void c() {
    try {
      synchronized (this.e) {
        for (djf djf : this.e.values()) {
          if (djf != null)
            ((div)this.a.c()).a(zzask.a(djf, null)); 
        } 
      } 
    } catch (RemoteException remoteException) {
      throw new IllegalStateException(remoteException);
    } 
    this.e.clear();
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{android/os/RemoteException}, name=null} */
    synchronized (this.f) {
      for (djc djc : this.f.values()) {
        if (djc != null)
          ((div)this.a.c()).a(zzask.a(djc, null)); 
      } 
    } 
    this.f.clear();
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{android/os/RemoteException}, name=null} */
  }
  
  public void d() {
    if (this.d)
      try {
        a(false);
        return;
      } catch (RemoteException remoteException) {
        throw new IllegalStateException(remoteException);
      }  
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */