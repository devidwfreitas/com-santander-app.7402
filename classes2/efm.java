import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.ArrayList;

public class efm implements Parcelable.Creator<CircleOptions> {
  public static void a(CircleOptions paramCircleOptions, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, (Parcelable)paramCircleOptions.a(), paramInt, false);
    csd.a(paramParcel, 3, paramCircleOptions.b());
    csd.a(paramParcel, 4, paramCircleOptions.c());
    csd.a(paramParcel, 5, paramCircleOptions.d());
    csd.a(paramParcel, 6, paramCircleOptions.f());
    csd.a(paramParcel, 7, paramCircleOptions.g());
    csd.a(paramParcel, 8, paramCircleOptions.h());
    csd.a(paramParcel, 9, paramCircleOptions.i());
    csd.c(paramParcel, 10, paramCircleOptions.e(), false);
    csd.a(paramParcel, i);
  }
  
  public CircleOptions a(Parcel paramParcel) {
    ArrayList<?> arrayList = null;
    float f1 = 0.0F;
    boolean bool1 = false;
    int k = csb.b(paramParcel);
    double d = 0.0D;
    boolean bool2 = false;
    int i = 0;
    int j = 0;
    float f2 = 0.0F;
    LatLng latLng = null;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 2:
          latLng = csb.<LatLng>a(paramParcel, m, LatLng.CREATOR);
          break;
        case 3:
          d = csb.n(paramParcel, m);
          break;
        case 4:
          f2 = csb.l(paramParcel, m);
          break;
        case 5:
          j = csb.g(paramParcel, m);
          break;
        case 6:
          i = csb.g(paramParcel, m);
          break;
        case 7:
          f1 = csb.l(paramParcel, m);
          break;
        case 8:
          bool2 = csb.c(paramParcel, m);
          break;
        case 9:
          bool1 = csb.c(paramParcel, m);
          break;
        case 10:
          arrayList = csb.c(paramParcel, m, PatternItem.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new CircleOptions(latLng, d, f2, j, i, f1, bool2, bool1, arrayList);
  }
  
  public CircleOptions[] a(int paramInt) {
    return new CircleOptions[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */