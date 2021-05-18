import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;

public class cqu implements Parcelable.Creator<Scope> {
  public static void a(Scope paramScope, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramScope.a);
    csd.a(paramParcel, 2, paramScope.a(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public Scope a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    int i = 0;
    String str = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          str = csb.q(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new Scope(i, str);
  }
  
  public Scope[] a(int paramInt) {
    return new Scope[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cqu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */