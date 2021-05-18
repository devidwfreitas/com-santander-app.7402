import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

public class efr implements Parcelable.Creator<MarkerOptions> {
  public static void a(MarkerOptions paramMarkerOptions, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, (Parcelable)paramMarkerOptions.b(), paramInt, false);
    csd.a(paramParcel, 3, paramMarkerOptions.c(), false);
    csd.a(paramParcel, 4, paramMarkerOptions.d(), false);
    csd.a(paramParcel, 5, paramMarkerOptions.a(), false);
    csd.a(paramParcel, 6, paramMarkerOptions.f());
    csd.a(paramParcel, 7, paramMarkerOptions.g());
    csd.a(paramParcel, 8, paramMarkerOptions.h());
    csd.a(paramParcel, 9, paramMarkerOptions.i());
    csd.a(paramParcel, 10, paramMarkerOptions.j());
    csd.a(paramParcel, 11, paramMarkerOptions.k());
    csd.a(paramParcel, 12, paramMarkerOptions.l());
    csd.a(paramParcel, 13, paramMarkerOptions.m());
    csd.a(paramParcel, 14, paramMarkerOptions.n());
    csd.a(paramParcel, 15, paramMarkerOptions.o());
    csd.a(paramParcel, i);
  }
  
  public MarkerOptions a(Parcel paramParcel) {
    int i = csb.b(paramParcel);
    LatLng latLng = null;
    String str2 = null;
    String str1 = null;
    IBinder iBinder = null;
    float f7 = 0.0F;
    float f6 = 0.0F;
    boolean bool3 = false;
    boolean bool2 = false;
    boolean bool1 = false;
    float f5 = 0.0F;
    float f4 = 0.5F;
    float f3 = 0.0F;
    float f2 = 1.0F;
    float f1 = 0.0F;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          latLng = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          break;
        case 3:
          str2 = csb.q(paramParcel, j);
          break;
        case 4:
          str1 = csb.q(paramParcel, j);
          break;
        case 5:
          iBinder = csb.r(paramParcel, j);
          break;
        case 6:
          f7 = csb.l(paramParcel, j);
          break;
        case 7:
          f6 = csb.l(paramParcel, j);
          break;
        case 8:
          bool3 = csb.c(paramParcel, j);
          break;
        case 9:
          bool2 = csb.c(paramParcel, j);
          break;
        case 10:
          bool1 = csb.c(paramParcel, j);
          break;
        case 11:
          f5 = csb.l(paramParcel, j);
          break;
        case 12:
          f4 = csb.l(paramParcel, j);
          break;
        case 13:
          f3 = csb.l(paramParcel, j);
          break;
        case 14:
          f2 = csb.l(paramParcel, j);
          break;
        case 15:
          f1 = csb.l(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new MarkerOptions(latLng, str2, str1, iBinder, f7, f6, bool3, bool2, bool1, f5, f4, f3, f2, f1);
  }
  
  public MarkerOptions[] a(int paramInt) {
    return new MarkerOptions[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */