import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import com.google.android.gms.maps.model.PolygonOptions;
import java.util.ArrayList;

public class efu implements Parcelable.Creator<PolygonOptions> {
  public static void a(PolygonOptions paramPolygonOptions, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.c(paramParcel, 2, paramPolygonOptions.b(), false);
    csd.d(paramParcel, 3, paramPolygonOptions.a(), false);
    csd.a(paramParcel, 4, paramPolygonOptions.d());
    csd.a(paramParcel, 5, paramPolygonOptions.e());
    csd.a(paramParcel, 6, paramPolygonOptions.h());
    csd.a(paramParcel, 7, paramPolygonOptions.i());
    csd.a(paramParcel, 8, paramPolygonOptions.j());
    csd.a(paramParcel, 9, paramPolygonOptions.k());
    csd.a(paramParcel, 10, paramPolygonOptions.l());
    csd.a(paramParcel, 11, paramPolygonOptions.f());
    csd.c(paramParcel, 12, paramPolygonOptions.g(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public PolygonOptions a(Parcel paramParcel) {
    ArrayList<?> arrayList1 = null;
    float f1 = 0.0F;
    int i = 0;
    int m = csb.b(paramParcel);
    ArrayList arrayList = new ArrayList();
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    int j = 0;
    int k = 0;
    float f2 = 0.0F;
    ArrayList<?> arrayList2 = null;
    while (paramParcel.dataPosition() < m) {
      int n = csb.a(paramParcel);
      switch (csb.a(n)) {
        case 2:
          arrayList2 = csb.c(paramParcel, n, LatLng.CREATOR);
          break;
        case 3:
          csb.a(paramParcel, n, arrayList, getClass().getClassLoader());
          break;
        case 4:
          f2 = csb.l(paramParcel, n);
          break;
        case 5:
          k = csb.g(paramParcel, n);
          break;
        case 6:
          j = csb.g(paramParcel, n);
          break;
        case 7:
          f1 = csb.l(paramParcel, n);
          break;
        case 8:
          bool3 = csb.c(paramParcel, n);
          break;
        case 9:
          bool2 = csb.c(paramParcel, n);
          break;
        case 10:
          bool1 = csb.c(paramParcel, n);
          break;
        case 11:
          i = csb.g(paramParcel, n);
          break;
        case 12:
          arrayList1 = csb.c(paramParcel, n, PatternItem.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != m)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(m).toString(), paramParcel); 
    return new PolygonOptions(arrayList2, arrayList, f2, k, j, f1, bool3, bool2, bool1, i, arrayList1);
  }
  
  public PolygonOptions[] a(int paramInt) {
    return new PolygonOptions[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */