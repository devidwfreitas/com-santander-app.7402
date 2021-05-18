import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public class efo implements Parcelable.Creator<LatLngBounds> {
  public static void a(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, (Parcelable)paramLatLngBounds.a, paramInt, false);
    csd.a(paramParcel, 3, (Parcelable)paramLatLngBounds.b, paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public LatLngBounds a(Parcel paramParcel) {
    LatLng latLng2 = null;
    int i = csb.b(paramParcel);
    LatLng latLng1 = null;
    while (paramParcel.dataPosition() < i) {
      LatLng latLng;
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          latLng = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          latLng1 = latLng2;
          latLng2 = latLng;
          latLng = latLng2;
          latLng2 = latLng1;
          latLng1 = latLng;
          break;
        case 3:
          latLng = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          latLng2 = latLng1;
          latLng1 = latLng;
          latLng = latLng2;
          latLng2 = latLng1;
          latLng1 = latLng;
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new LatLngBounds(latLng1, latLng2);
  }
  
  public LatLngBounds[] a(int paramInt) {
    return new LatLngBounds[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */