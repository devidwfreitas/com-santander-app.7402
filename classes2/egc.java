import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.VisibleRegion;

public class egc implements Parcelable.Creator<VisibleRegion> {
  public static void a(VisibleRegion paramVisibleRegion, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, (Parcelable)paramVisibleRegion.a, paramInt, false);
    csd.a(paramParcel, 3, (Parcelable)paramVisibleRegion.b, paramInt, false);
    csd.a(paramParcel, 4, (Parcelable)paramVisibleRegion.c, paramInt, false);
    csd.a(paramParcel, 5, (Parcelable)paramVisibleRegion.d, paramInt, false);
    csd.a(paramParcel, 6, (Parcelable)paramVisibleRegion.e, paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public VisibleRegion a(Parcel paramParcel) {
    LatLngBounds latLngBounds = null;
    int i = csb.b(paramParcel);
    LatLng latLng1 = null;
    LatLng latLng2 = null;
    LatLng latLng3 = null;
    LatLng latLng4 = null;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          latLng4 = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          break;
        case 3:
          latLng3 = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          break;
        case 4:
          latLng2 = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          break;
        case 5:
          latLng1 = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          break;
        case 6:
          latLngBounds = csb.<LatLngBounds>a(paramParcel, j, LatLngBounds.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new VisibleRegion(latLng4, latLng3, latLng2, latLng1, latLngBounds);
  }
  
  public VisibleRegion[] a(int paramInt) {
    return new VisibleRegion[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\egc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */