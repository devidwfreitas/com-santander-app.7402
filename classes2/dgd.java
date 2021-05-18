import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzacw;
import java.util.ArrayList;

public class dgd implements Parcelable.Creator<zzacw.zza> {
  public static void a(zzacw.zza paramzza, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzza.a);
    csd.a(paramParcel, 2, paramzza.b, false);
    csd.c(paramParcel, 3, paramzza.c, false);
    csd.a(paramParcel, paramInt);
  }
  
  public zzacw.zza a(Parcel paramParcel) {
    ArrayList<?> arrayList = null;
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
        case 3:
          arrayList = csb.c(paramParcel, k, zzacw.zzb.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzacw.zza(i, str, arrayList);
  }
  
  public zzacw.zza[] a(int paramInt) {
    return new zzacw.zza[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */