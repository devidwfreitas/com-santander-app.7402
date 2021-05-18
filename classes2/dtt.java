import com.google.android.gms.internal.zzasm;
import com.google.android.gms.location.GeofencingRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dtt {
  private final List<zzasm> a = new ArrayList<zzasm>();
  
  private int b = 5;
  
  private String c = "";
  
  public static int b(int paramInt) {
    return paramInt & 0x7;
  }
  
  public GeofencingRequest a() {
    if (!this.a.isEmpty()) {
      boolean bool1 = true;
      csp.b(bool1, "No geofence has been added to this request.");
      return new GeofencingRequest(this.a, this.b, this.c);
    } 
    boolean bool = false;
    csp.b(bool, "No geofence has been added to this request.");
    return new GeofencingRequest(this.a, this.b, this.c);
  }
  
  public dtt a(int paramInt) {
    this.b = b(paramInt);
    return this;
  }
  
  public dtt a(dto paramdto) {
    csp.a(paramdto, "geofence can't be null.");
    csp.b(paramdto instanceof zzasm, "Geofence must be created using Geofence.Builder.");
    this.a.add((zzasm)paramdto);
    return this;
  }
  
  public dtt a(List<dto> paramList) {
    if (paramList != null && !paramList.isEmpty()) {
      Iterator<dto> iterator = paramList.iterator();
      while (true) {
        if (iterator.hasNext()) {
          dto dto = iterator.next();
          if (dto != null)
            a(dto); 
          continue;
        } 
        return this;
      } 
    } 
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dtt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */