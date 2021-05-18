import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.zzg;

public class cog implements Parcelable.Creator<zzg> {
  public static void a(zzg paramzzg, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzg.a);
    csd.a(paramParcel, 2, paramzzg.a());
    csd.a(paramParcel, 3, paramzzg.b(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public zzg a(Parcel paramParcel) {
    int j = 0;
    int k = csb.b(paramParcel);
    Bundle bundle = null;
    int i = 0;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 1:
          i = csb.g(paramParcel, m);
          break;
        case 2:
          j = csb.g(paramParcel, m);
          break;
        case 3:
          bundle = csb.s(paramParcel, m);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new zzg(i, j, bundle);
  }
  
  public zzg[] a(int paramInt) {
    return new zzg[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */