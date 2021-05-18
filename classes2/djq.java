import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;

class djq extends dty<LocationSettingsResult> {
  djq(djp paramdjp, cpt paramcpt, LocationSettingsRequest paramLocationSettingsRequest, String paramString) {
    super(paramcpt);
  }
  
  protected void a(djh paramdjh) {
    paramdjh.a(this.d, (dao<LocationSettingsResult>)this, this.e);
  }
  
  public LocationSettingsResult d(Status paramStatus) {
    return new LocationSettingsResult(paramStatus);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */