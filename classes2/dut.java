import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationResult;
import java.util.List;

public class dut implements Parcelable.Creator<LocationResult> {
  public static void a(LocationResult paramLocationResult, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.c(paramParcel, 1, paramLocationResult.b(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public LocationResult a(Parcel paramParcel) {
    int i = csb.b(paramParcel);
    List<?> list = LocationResult.a;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 1:
          list = csb.c(paramParcel, j, Location.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new LocationResult(list);
  }
  
  public LocationResult[] a(int paramInt) {
    return new LocationResult[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dut.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */