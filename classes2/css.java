import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzah;

public class css implements Parcelable.Creator<zzah> {
  public static void a(zzah paramzzah, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzah.a);
    csd.a(paramParcel, 2, paramzzah.a());
    csd.a(paramParcel, 3, paramzzah.b());
    csd.a(paramParcel, 4, paramzzah.c(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzah a(Parcel paramParcel) {
    int k = 0;
    int m = csb.b(paramParcel);
    Scope[] arrayOfScope = null;
    int j = 0;
    int i = 0;
    while (paramParcel.dataPosition() < m) {
      int n = csb.a(paramParcel);
      switch (csb.a(n)) {
        case 1:
          i = csb.g(paramParcel, n);
          break;
        case 2:
          j = csb.g(paramParcel, n);
          break;
        case 3:
          k = csb.g(paramParcel, n);
          break;
        case 4:
          arrayOfScope = csb.<Scope>b(paramParcel, n, Scope.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != m)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(m).toString(), paramParcel); 
    return new zzah(i, j, k, arrayOfScope);
  }
  
  public zzah[] a(int paramInt) {
    return new zzah[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\css.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */