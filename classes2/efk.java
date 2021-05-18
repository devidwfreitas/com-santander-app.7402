import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;

public class efk implements Parcelable.Creator<CameraPosition> {
  public static void a(CameraPosition paramCameraPosition, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, (Parcelable)paramCameraPosition.a, paramInt, false);
    csd.a(paramParcel, 3, paramCameraPosition.b);
    csd.a(paramParcel, 4, paramCameraPosition.c);
    csd.a(paramParcel, 5, paramCameraPosition.d);
    csd.a(paramParcel, i);
  }
  
  public CameraPosition a(Parcel paramParcel) {
    float f1 = 0.0F;
    int i = csb.b(paramParcel);
    LatLng latLng = null;
    float f3 = 0.0F;
    float f2 = 0.0F;
    while (paramParcel.dataPosition() < i) {
      float f;
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          latLng = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          f = f2;
          f2 = f3;
          f3 = f;
          f = f3;
          f3 = f2;
          f2 = f;
          break;
        case 3:
          f = csb.l(paramParcel, j);
          f2 = f3;
          f3 = f;
          f = f3;
          f3 = f2;
          f2 = f;
          break;
        case 4:
          f = csb.l(paramParcel, j);
          f3 = f2;
          f2 = f;
          f = f3;
          f3 = f2;
          f2 = f;
          break;
        case 5:
          f1 = csb.l(paramParcel, j);
          f = f2;
          f2 = f3;
          f3 = f;
          f = f3;
          f3 = f2;
          f2 = f;
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new CameraPosition(latLng, f2, f3, f1);
  }
  
  public CameraPosition[] a(int paramInt) {
    return new CameraPosition[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */