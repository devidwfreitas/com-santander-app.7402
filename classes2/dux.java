import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationSettingsStates;

public class dux implements Parcelable.Creator<LocationSettingsStates> {
  public static void a(LocationSettingsStates paramLocationSettingsStates, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramLocationSettingsStates.a());
    csd.a(paramParcel, 2, paramLocationSettingsStates.c());
    csd.a(paramParcel, 3, paramLocationSettingsStates.g());
    csd.a(paramParcel, 4, paramLocationSettingsStates.b());
    csd.a(paramParcel, 5, paramLocationSettingsStates.d());
    csd.a(paramParcel, 6, paramLocationSettingsStates.h());
    csd.a(paramParcel, paramInt);
  }
  
  public LocationSettingsStates a(Parcel paramParcel) {
    boolean bool1 = false;
    int i = csb.b(paramParcel);
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool6 = false;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 1:
          bool6 = csb.c(paramParcel, j);
          break;
        case 2:
          bool5 = csb.c(paramParcel, j);
          break;
        case 3:
          bool4 = csb.c(paramParcel, j);
          break;
        case 4:
          bool3 = csb.c(paramParcel, j);
          break;
        case 5:
          bool2 = csb.c(paramParcel, j);
          break;
        case 6:
          bool1 = csb.c(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new LocationSettingsStates(bool6, bool5, bool4, bool3, bool2, bool1);
  }
  
  public LocationSettingsStates[] a(int paramInt) {
    return new LocationSettingsStates[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dux.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */