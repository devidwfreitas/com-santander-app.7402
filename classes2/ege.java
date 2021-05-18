import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public class ege implements Parcelable.Creator<StreetViewPanoramaOptions> {
  public static void a(StreetViewPanoramaOptions paramStreetViewPanoramaOptions, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, (Parcelable)paramStreetViewPanoramaOptions.f(), paramInt, false);
    csd.a(paramParcel, 3, paramStreetViewPanoramaOptions.i(), false);
    csd.a(paramParcel, 4, (Parcelable)paramStreetViewPanoramaOptions.g(), paramInt, false);
    csd.a(paramParcel, 5, paramStreetViewPanoramaOptions.h(), false);
    csd.a(paramParcel, 6, paramStreetViewPanoramaOptions.a());
    csd.a(paramParcel, 7, paramStreetViewPanoramaOptions.b());
    csd.a(paramParcel, 8, paramStreetViewPanoramaOptions.c());
    csd.a(paramParcel, 9, paramStreetViewPanoramaOptions.d());
    csd.a(paramParcel, 10, paramStreetViewPanoramaOptions.e());
    csd.a(paramParcel, i);
  }
  
  public StreetViewPanoramaOptions a(Parcel paramParcel) {
    Integer integer = null;
    byte b1 = 0;
    int i = csb.b(paramParcel);
    byte b2 = 0;
    byte b3 = 0;
    byte b4 = 0;
    byte b5 = 0;
    LatLng latLng = null;
    String str = null;
    StreetViewPanoramaCamera streetViewPanoramaCamera = null;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          streetViewPanoramaCamera = csb.<StreetViewPanoramaCamera>a(paramParcel, j, StreetViewPanoramaCamera.CREATOR);
          break;
        case 3:
          str = csb.q(paramParcel, j);
          break;
        case 4:
          latLng = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          break;
        case 5:
          integer = csb.h(paramParcel, j);
          break;
        case 6:
          b5 = csb.e(paramParcel, j);
          break;
        case 7:
          b4 = csb.e(paramParcel, j);
          break;
        case 8:
          b3 = csb.e(paramParcel, j);
          break;
        case 9:
          b2 = csb.e(paramParcel, j);
          break;
        case 10:
          b1 = csb.e(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new StreetViewPanoramaOptions(streetViewPanoramaCamera, str, latLng, integer, b5, b4, b3, b2, b1);
  }
  
  public StreetViewPanoramaOptions[] a(int paramInt) {
    return new StreetViewPanoramaOptions[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ege.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */