import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.LocationSettingsStates;

public class duw implements Parcelable.Creator<LocationSettingsResult> {
  public static void a(LocationSettingsResult paramLocationSettingsResult, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, (Parcelable)paramLocationSettingsResult.a(), paramInt, false);
    csd.a(paramParcel, 2, (Parcelable)paramLocationSettingsResult.b(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public LocationSettingsResult a(Parcel paramParcel) {
    LocationSettingsStates locationSettingsStates;
    Status status2 = null;
    int i = csb.b(paramParcel);
    Status status1 = null;
    while (paramParcel.dataPosition() < i) {
      LocationSettingsStates locationSettingsStates1;
      Status status4;
      LocationSettingsStates locationSettingsStates2;
      Status status3;
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 1:
          status4 = csb.<Status>a(paramParcel, j, Status.CREATOR);
          status1 = status2;
          status2 = status4;
          status4 = status2;
          status2 = status1;
          status1 = status4;
          break;
        case 2:
          locationSettingsStates2 = csb.<LocationSettingsStates>a(paramParcel, j, LocationSettingsStates.CREATOR);
          status2 = status1;
          locationSettingsStates1 = locationSettingsStates2;
          status3 = status2;
          locationSettingsStates = locationSettingsStates1;
          status1 = status3;
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new LocationSettingsResult(status1, locationSettingsStates);
  }
  
  public LocationSettingsResult[] a(int paramInt) {
    return new LocationSettingsResult[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\duw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */