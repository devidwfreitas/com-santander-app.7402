import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzacw;
import java.util.ArrayList;

public class dgc implements Parcelable.Creator<zzacw> {
  public static void a(zzacw paramzzacw, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzacw.a);
    csd.c(paramParcel, 2, paramzzacw.b(), false);
    csd.a(paramParcel, 3, paramzzacw.c(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public zzacw a(Parcel paramParcel) {
    String str = null;
    int j = csb.b(paramParcel);
    int i = 0;
    ArrayList<?> arrayList = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          arrayList = csb.c(paramParcel, k, zzacw.zza.CREATOR);
          break;
        case 3:
          str = csb.q(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzacw(i, arrayList, str);
  }
  
  public zzacw[] a(int paramInt) {
    return new zzacw[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */