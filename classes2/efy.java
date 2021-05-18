import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaLink;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;

public class efy implements Parcelable.Creator<StreetViewPanoramaLocation> {
  public static void a(StreetViewPanoramaLocation paramStreetViewPanoramaLocation, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramStreetViewPanoramaLocation.a, paramInt, false);
    csd.a(paramParcel, 3, (Parcelable)paramStreetViewPanoramaLocation.b, paramInt, false);
    csd.a(paramParcel, 4, paramStreetViewPanoramaLocation.c, false);
    csd.a(paramParcel, i);
  }
  
  public StreetViewPanoramaLocation a(Parcel paramParcel) {
    LatLng latLng;
    String str = null;
    int i = csb.b(paramParcel);
    StreetViewPanoramaLink[] arrayOfStreetViewPanoramaLink2 = null;
    StreetViewPanoramaLink[] arrayOfStreetViewPanoramaLink1 = null;
    while (paramParcel.dataPosition() < i) {
      LatLng latLng2;
      StreetViewPanoramaLink[] arrayOfStreetViewPanoramaLink3;
      LatLng latLng1;
      LatLng latLng3;
      StreetViewPanoramaLink[] arrayOfStreetViewPanoramaLink4;
      StreetViewPanoramaLink[] arrayOfStreetViewPanoramaLink6;
      LatLng latLng4;
      StreetViewPanoramaLink[] arrayOfStreetViewPanoramaLink5;
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          arrayOfStreetViewPanoramaLink6 = csb.<StreetViewPanoramaLink>b(paramParcel, j, StreetViewPanoramaLink.CREATOR);
          arrayOfStreetViewPanoramaLink1 = arrayOfStreetViewPanoramaLink2;
          arrayOfStreetViewPanoramaLink2 = arrayOfStreetViewPanoramaLink6;
          arrayOfStreetViewPanoramaLink6 = arrayOfStreetViewPanoramaLink2;
          arrayOfStreetViewPanoramaLink2 = arrayOfStreetViewPanoramaLink1;
          arrayOfStreetViewPanoramaLink1 = arrayOfStreetViewPanoramaLink6;
          break;
        case 3:
          latLng4 = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          arrayOfStreetViewPanoramaLink2 = arrayOfStreetViewPanoramaLink1;
          latLng2 = latLng4;
          arrayOfStreetViewPanoramaLink5 = arrayOfStreetViewPanoramaLink2;
          latLng3 = latLng2;
          arrayOfStreetViewPanoramaLink3 = arrayOfStreetViewPanoramaLink5;
          break;
        case 4:
          str = csb.q(paramParcel, j);
          arrayOfStreetViewPanoramaLink5 = arrayOfStreetViewPanoramaLink3;
          latLng1 = latLng3;
          arrayOfStreetViewPanoramaLink4 = arrayOfStreetViewPanoramaLink5;
          arrayOfStreetViewPanoramaLink5 = arrayOfStreetViewPanoramaLink4;
          latLng = latLng1;
          arrayOfStreetViewPanoramaLink1 = arrayOfStreetViewPanoramaLink5;
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new StreetViewPanoramaLocation(arrayOfStreetViewPanoramaLink1, latLng, str);
  }
  
  public StreetViewPanoramaLocation[] a(int paramInt) {
    return new StreetViewPanoramaLocation[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */