import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;

public class egd implements Parcelable.Creator<GoogleMapOptions> {
  public static void a(GoogleMapOptions paramGoogleMapOptions, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramGoogleMapOptions.a());
    csd.a(paramParcel, 3, paramGoogleMapOptions.b());
    csd.a(paramParcel, 4, paramGoogleMapOptions.n());
    csd.a(paramParcel, 5, (Parcelable)paramGoogleMapOptions.o(), paramInt, false);
    csd.a(paramParcel, 6, paramGoogleMapOptions.c());
    csd.a(paramParcel, 7, paramGoogleMapOptions.d());
    csd.a(paramParcel, 8, paramGoogleMapOptions.e());
    csd.a(paramParcel, 9, paramGoogleMapOptions.f());
    csd.a(paramParcel, 10, paramGoogleMapOptions.g());
    csd.a(paramParcel, 11, paramGoogleMapOptions.h());
    csd.a(paramParcel, 12, paramGoogleMapOptions.i());
    csd.a(paramParcel, 14, paramGoogleMapOptions.j());
    csd.a(paramParcel, 15, paramGoogleMapOptions.k());
    csd.a(paramParcel, 16, paramGoogleMapOptions.y(), false);
    csd.a(paramParcel, 17, paramGoogleMapOptions.z(), false);
    csd.a(paramParcel, 18, (Parcelable)paramGoogleMapOptions.A(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public GoogleMapOptions a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    byte b11 = -1;
    byte b10 = -1;
    int i = 0;
    CameraPosition cameraPosition = null;
    byte b9 = -1;
    byte b8 = -1;
    byte b7 = -1;
    byte b6 = -1;
    byte b5 = -1;
    byte b4 = -1;
    byte b3 = -1;
    byte b2 = -1;
    byte b1 = -1;
    Float float_2 = null;
    Float float_1 = null;
    LatLngBounds latLngBounds = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 2:
          b11 = csb.e(paramParcel, k);
          break;
        case 3:
          b10 = csb.e(paramParcel, k);
          break;
        case 4:
          i = csb.g(paramParcel, k);
          break;
        case 5:
          cameraPosition = csb.<CameraPosition>a(paramParcel, k, CameraPosition.CREATOR);
          break;
        case 6:
          b9 = csb.e(paramParcel, k);
          break;
        case 7:
          b8 = csb.e(paramParcel, k);
          break;
        case 8:
          b7 = csb.e(paramParcel, k);
          break;
        case 9:
          b6 = csb.e(paramParcel, k);
          break;
        case 10:
          b5 = csb.e(paramParcel, k);
          break;
        case 11:
          b4 = csb.e(paramParcel, k);
          break;
        case 12:
          b3 = csb.e(paramParcel, k);
          break;
        case 14:
          b2 = csb.e(paramParcel, k);
          break;
        case 15:
          b1 = csb.e(paramParcel, k);
          break;
        case 16:
          float_2 = csb.m(paramParcel, k);
          break;
        case 17:
          float_1 = csb.m(paramParcel, k);
          break;
        case 18:
          latLngBounds = csb.<LatLngBounds>a(paramParcel, k, LatLngBounds.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new GoogleMapOptions(b11, b10, i, cameraPosition, b9, b8, b7, b6, b5, b4, b3, b2, b1, float_2, float_1, latLngBounds);
  }
  
  public GoogleMapOptions[] a(int paramInt) {
    return new GoogleMapOptions[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\egd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */