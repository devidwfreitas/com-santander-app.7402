import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;

public class efp implements Parcelable.Creator<LatLng> {
  public static void a(LatLng paramLatLng, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramLatLng.a);
    csd.a(paramParcel, 3, paramLatLng.b);
    csd.a(paramParcel, paramInt);
  }
  
  public LatLng a(Parcel paramParcel) {
    double d2 = 0.0D;
    int i = csb.b(paramParcel);
    double d1 = 0.0D;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          d1 = csb.n(paramParcel, j);
          break;
        case 3:
          d2 = csb.n(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new LatLng(d1, d2);
  }
  
  public LatLng[] a(int paramInt) {
    return new LatLng[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */