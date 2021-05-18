import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.zzo;
import java.util.ArrayList;

public class duv implements Parcelable.Creator<LocationSettingsRequest> {
  public static void a(LocationSettingsRequest paramLocationSettingsRequest, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.c(paramParcel, 1, paramLocationSettingsRequest.a(), false);
    csd.a(paramParcel, 2, paramLocationSettingsRequest.b());
    csd.a(paramParcel, 3, paramLocationSettingsRequest.c());
    csd.a(paramParcel, 5, (Parcelable)paramLocationSettingsRequest.d(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public LocationSettingsRequest a(Parcel paramParcel) {
    zzo zzo = null;
    boolean bool2 = false;
    int i = csb.b(paramParcel);
    boolean bool1 = false;
    ArrayList<?> arrayList = null;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 1:
          arrayList = csb.c(paramParcel, j, LocationRequest.CREATOR);
          break;
        case 2:
          bool1 = csb.c(paramParcel, j);
          break;
        case 3:
          bool2 = csb.c(paramParcel, j);
          break;
        case 5:
          zzo = csb.<zzo>a(paramParcel, j, zzo.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new LocationSettingsRequest(arrayList, bool1, bool2, zzo);
  }
  
  public LocationSettingsRequest[] a(int paramInt) {
    return new LocationSettingsRequest[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\duv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */