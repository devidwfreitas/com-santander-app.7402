import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzacn;
import com.google.android.gms.internal.zzacs;

public class dga implements Parcelable.Creator<zzacs.zza> {
  public static void a(zzacs.zza paramzza, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzza.a());
    csd.a(paramParcel, 2, paramzza.b());
    csd.a(paramParcel, 3, paramzza.c());
    csd.a(paramParcel, 4, paramzza.d());
    csd.a(paramParcel, 5, paramzza.e());
    csd.a(paramParcel, 6, paramzza.f(), false);
    csd.a(paramParcel, 7, paramzza.g());
    csd.a(paramParcel, 8, paramzza.i(), false);
    csd.a(paramParcel, 9, (Parcelable)paramzza.k(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzacs.zza a(Parcel paramParcel) {
    zzacn zzacn = null;
    int i = 0;
    int n = csb.b(paramParcel);
    String str1 = null;
    String str2 = null;
    boolean bool1 = false;
    int j = 0;
    boolean bool2 = false;
    int k = 0;
    int m = 0;
    while (paramParcel.dataPosition() < n) {
      int i1 = csb.a(paramParcel);
      switch (csb.a(i1)) {
        case 1:
          m = csb.g(paramParcel, i1);
          break;
        case 2:
          k = csb.g(paramParcel, i1);
          break;
        case 3:
          bool2 = csb.c(paramParcel, i1);
          break;
        case 4:
          j = csb.g(paramParcel, i1);
          break;
        case 5:
          bool1 = csb.c(paramParcel, i1);
          break;
        case 6:
          str2 = csb.q(paramParcel, i1);
          break;
        case 7:
          i = csb.g(paramParcel, i1);
          break;
        case 8:
          str1 = csb.q(paramParcel, i1);
          break;
        case 9:
          zzacn = csb.<zzacn>a(paramParcel, i1, zzacn.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != n)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(n).toString(), paramParcel); 
    return new zzacs.zza(m, k, bool2, j, bool1, str2, i, str1, zzacn);
  }
  
  public zzacs.zza[] a(int paramInt) {
    return new zzacs.zza[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dga.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */