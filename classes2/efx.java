import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.StreetViewPanoramaLink;

public class efx implements Parcelable.Creator<StreetViewPanoramaLink> {
  public static void a(StreetViewPanoramaLink paramStreetViewPanoramaLink, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramStreetViewPanoramaLink.a, false);
    csd.a(paramParcel, 3, paramStreetViewPanoramaLink.b);
    csd.a(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaLink a(Parcel paramParcel) {
    int i = csb.b(paramParcel);
    String str = null;
    float f = 0.0F;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          str = csb.q(paramParcel, j);
          break;
        case 3:
          f = csb.l(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new StreetViewPanoramaLink(str, f);
  }
  
  public StreetViewPanoramaLink[] a(int paramInt) {
    return new StreetViewPanoramaLink[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */