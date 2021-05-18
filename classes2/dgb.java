import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzacs;
import com.google.android.gms.internal.zzacw;

public class dgb implements Parcelable.Creator<zzacw.zzb> {
  public static void a(zzacw.zzb paramzzb, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzb.a);
    csd.a(paramParcel, 2, paramzzb.b, false);
    csd.a(paramParcel, 3, (Parcelable)paramzzb.c, paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzacw.zzb a(Parcel paramParcel) {
    zzacs.zza zza = null;
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
          zza = csb.<zzacs.zza>a(paramParcel, k, zzacs.zza.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzacw.zzb(i, str, zza);
  }
  
  public zzacw.zzb[] a(int paramInt) {
    return new zzacw.zzb[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */