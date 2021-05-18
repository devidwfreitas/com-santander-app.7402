import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.Cap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import com.google.android.gms.maps.model.PolylineOptions;
import java.util.ArrayList;

public class efv implements Parcelable.Creator<PolylineOptions> {
  public static void a(PolylineOptions paramPolylineOptions, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.c(paramParcel, 2, paramPolylineOptions.a(), false);
    csd.a(paramParcel, 3, paramPolylineOptions.b());
    csd.a(paramParcel, 4, paramPolylineOptions.c());
    csd.a(paramParcel, 5, paramPolylineOptions.h());
    csd.a(paramParcel, 6, paramPolylineOptions.i());
    csd.a(paramParcel, 7, paramPolylineOptions.j());
    csd.a(paramParcel, 8, paramPolylineOptions.k());
    csd.a(paramParcel, 9, (Parcelable)paramPolylineOptions.d(), paramInt, false);
    csd.a(paramParcel, 10, (Parcelable)paramPolylineOptions.e(), paramInt, false);
    csd.a(paramParcel, 11, paramPolylineOptions.f());
    csd.c(paramParcel, 12, paramPolylineOptions.g(), false);
    csd.a(paramParcel, i);
  }
  
  public PolylineOptions a(Parcel paramParcel) {
    float f1 = 0.0F;
    ArrayList<?> arrayList1 = null;
    int i = 0;
    int k = csb.b(paramParcel);
    Cap cap1 = null;
    Cap cap2 = null;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    int j = 0;
    float f2 = 0.0F;
    ArrayList<?> arrayList2 = null;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 2:
          arrayList2 = csb.c(paramParcel, m, LatLng.CREATOR);
          break;
        case 3:
          f2 = csb.l(paramParcel, m);
          break;
        case 4:
          j = csb.g(paramParcel, m);
          break;
        case 5:
          f1 = csb.l(paramParcel, m);
          break;
        case 6:
          bool3 = csb.c(paramParcel, m);
          break;
        case 7:
          bool2 = csb.c(paramParcel, m);
          break;
        case 8:
          bool1 = csb.c(paramParcel, m);
          break;
        case 9:
          cap2 = csb.<Cap>a(paramParcel, m, Cap.CREATOR);
          break;
        case 10:
          cap1 = csb.<Cap>a(paramParcel, m, Cap.CREATOR);
          break;
        case 11:
          i = csb.g(paramParcel, m);
          break;
        case 12:
          arrayList1 = csb.c(paramParcel, m, PatternItem.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new PolylineOptions(arrayList2, f2, j, f1, bool3, bool2, bool1, cap2, cap1, i, arrayList1);
  }
  
  public PolylineOptions[] a(int paramInt) {
    return new PolylineOptions[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */