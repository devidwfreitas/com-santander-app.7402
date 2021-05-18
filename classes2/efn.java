import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public class efn implements Parcelable.Creator<GroundOverlayOptions> {
  public static void a(GroundOverlayOptions paramGroundOverlayOptions, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramGroundOverlayOptions.a(), false);
    csd.a(paramParcel, 3, (Parcelable)paramGroundOverlayOptions.c(), paramInt, false);
    csd.a(paramParcel, 4, paramGroundOverlayOptions.d());
    csd.a(paramParcel, 5, paramGroundOverlayOptions.e());
    csd.a(paramParcel, 6, (Parcelable)paramGroundOverlayOptions.f(), paramInt, false);
    csd.a(paramParcel, 7, paramGroundOverlayOptions.g());
    csd.a(paramParcel, 8, paramGroundOverlayOptions.h());
    csd.a(paramParcel, 9, paramGroundOverlayOptions.l());
    csd.a(paramParcel, 10, paramGroundOverlayOptions.i());
    csd.a(paramParcel, 11, paramGroundOverlayOptions.j());
    csd.a(paramParcel, 12, paramGroundOverlayOptions.k());
    csd.a(paramParcel, 13, paramGroundOverlayOptions.m());
    csd.a(paramParcel, i);
  }
  
  public GroundOverlayOptions a(Parcel paramParcel) {
    int i = csb.b(paramParcel);
    IBinder iBinder = null;
    LatLng latLng = null;
    float f7 = 0.0F;
    float f6 = 0.0F;
    LatLngBounds latLngBounds = null;
    float f5 = 0.0F;
    float f4 = 0.0F;
    boolean bool2 = false;
    float f3 = 0.0F;
    float f2 = 0.0F;
    float f1 = 0.0F;
    boolean bool1 = false;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          iBinder = csb.r(paramParcel, j);
          break;
        case 3:
          latLng = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          break;
        case 4:
          f7 = csb.l(paramParcel, j);
          break;
        case 5:
          f6 = csb.l(paramParcel, j);
          break;
        case 6:
          latLngBounds = csb.<LatLngBounds>a(paramParcel, j, LatLngBounds.CREATOR);
          break;
        case 7:
          f5 = csb.l(paramParcel, j);
          break;
        case 8:
          f4 = csb.l(paramParcel, j);
          break;
        case 9:
          bool2 = csb.c(paramParcel, j);
          break;
        case 10:
          f3 = csb.l(paramParcel, j);
          break;
        case 11:
          f2 = csb.l(paramParcel, j);
          break;
        case 12:
          f1 = csb.l(paramParcel, j);
          break;
        case 13:
          bool1 = csb.c(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new GroundOverlayOptions(iBinder, latLng, f7, f6, latLngBounds, f5, f4, bool2, f3, f2, f1, bool1);
  }
  
  public GroundOverlayOptions[] a(int paramInt) {
    return new GroundOverlayOptions[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */