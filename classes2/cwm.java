import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.zzc;

public class cwm implements Parcelable.Creator<zzc> {
  public static void a(zzc paramzzc, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzc.a, false);
    csd.a(paramParcel, 2, paramzzc.b);
    csd.a(paramParcel, paramInt);
  }
  
  public zzc a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    String str = null;
    int i = 0;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          str = csb.q(paramParcel, k);
          break;
        case 2:
          i = csb.g(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzc(str, i);
  }
  
  public zzc[] a(int paramInt) {
    return new zzc[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */