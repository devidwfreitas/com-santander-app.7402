import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.internal.zzbau;

public class dqm implements Parcelable.Creator<zzbau> {
  public static void a(zzbau paramzzbau, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzbau.a);
    csd.a(paramParcel, 2, (Parcelable)paramzzbau.a(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzbau a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    int i = 0;
    zzad zzad = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          zzad = csb.<zzad>a(paramParcel, k, zzad.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzbau(i, zzad);
  }
  
  public zzbau[] a(int paramInt) {
    return new zzbau[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */