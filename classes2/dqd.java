import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzban;
import java.util.ArrayList;

public class dqd implements Parcelable.Creator<zzban> {
  public static void a(zzban paramzzban, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzban.a);
    csd.a(paramParcel, 2, paramzzban.b);
    csd.c(paramParcel, 3, paramzzban.c, false);
    csd.a(paramParcel, paramInt);
  }
  
  public zzban a(Parcel paramParcel) {
    boolean bool = false;
    int j = csb.b(paramParcel);
    ArrayList<?> arrayList = null;
    int i = 0;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          bool = csb.c(paramParcel, k);
          break;
        case 3:
          arrayList = csb.c(paramParcel, k, Scope.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzban(i, bool, arrayList);
  }
  
  public zzban[] a(int paramInt) {
    return new zzban[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */