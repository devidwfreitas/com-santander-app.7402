import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.zzo;
import java.util.ArrayList;
import java.util.Collection;

public final class dtz {
  private final ArrayList<LocationRequest> a = new ArrayList<LocationRequest>();
  
  private boolean b = false;
  
  private boolean c = false;
  
  private zzo d = null;
  
  public LocationSettingsRequest a() {
    return new LocationSettingsRequest(this.a, this.b, this.c, null);
  }
  
  public dtz a(LocationRequest paramLocationRequest) {
    this.a.add(paramLocationRequest);
    return this;
  }
  
  public dtz a(Collection<LocationRequest> paramCollection) {
    this.a.addAll(paramCollection);
    return this;
  }
  
  public dtz a(boolean paramBoolean) {
    this.b = paramBoolean;
    return this;
  }
  
  public dtz b(boolean paramBoolean) {
    this.c = paramBoolean;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dtz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */