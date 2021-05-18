import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public class efw implements Parcelable.Creator<StreetViewPanoramaCamera> {
  public static void a(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramStreetViewPanoramaCamera.a);
    csd.a(paramParcel, 3, paramStreetViewPanoramaCamera.b);
    csd.a(paramParcel, 4, paramStreetViewPanoramaCamera.c);
    csd.a(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaCamera a(Parcel paramParcel) {
    float f3 = 0.0F;
    int i = csb.b(paramParcel);
    float f2 = 0.0F;
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
        case 4:
          f3 = csb.l(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new StreetViewPanoramaCamera(f1, f2, f3);
  }
  
  public StreetViewPanoramaCamera[] a(int paramInt) {
    return new StreetViewPanoramaCamera[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */