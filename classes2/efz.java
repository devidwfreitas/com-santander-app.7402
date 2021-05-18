import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public class efz implements Parcelable.Creator<StreetViewPanoramaOrientation> {
  public static void a(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramStreetViewPanoramaOrientation.a);
    csd.a(paramParcel, 3, paramStreetViewPanoramaOrientation.b);
    csd.a(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaOrientation a(Parcel paramParcel) {
    float f2 = 0.0F;
    int i = csb.b(paramParcel);
    float f1 = 0.0F;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          f1 = csb.l(paramParcel, j);
          break;
        case 3:
          f2 = csb.l(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new StreetViewPanoramaOrientation(f1, f2);
  }
  
  public StreetViewPanoramaOrientation[] a(int paramInt) {
    return new StreetViewPanoramaOrientation[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */