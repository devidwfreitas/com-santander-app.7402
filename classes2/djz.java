import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzatg;
import com.google.android.gms.internal.zzatq;
import com.google.android.gms.internal.zzauq;

public class djz implements Parcelable.Creator<zzatg> {
  public static void a(zzatg paramzzatg, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzatg.a);
    csd.a(paramParcel, 2, paramzzatg.b, false);
    csd.a(paramParcel, 3, paramzzatg.c, false);
    csd.a(paramParcel, 4, (Parcelable)paramzzatg.d, paramInt, false);
    csd.a(paramParcel, 5, paramzzatg.e);
    csd.a(paramParcel, 6, paramzzatg.f);
    csd.a(paramParcel, 7, paramzzatg.g, false);
    csd.a(paramParcel, 8, (Parcelable)paramzzatg.h, paramInt, false);
    csd.a(paramParcel, 9, paramzzatg.i);
    csd.a(paramParcel, 10, (Parcelable)paramzzatg.j, paramInt, false);
    csd.a(paramParcel, 11, paramzzatg.k);
    csd.a(paramParcel, 12, (Parcelable)paramzzatg.l, paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzatg a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    int i = 0;
    String str3 = null;
    String str2 = null;
    zzauq zzauq = null;
    long l3 = 0L;
    boolean bool = false;
    String str1 = null;
    zzatq zzatq3 = null;
    long l2 = 0L;
    zzatq zzatq2 = null;
    long l1 = 0L;
    zzatq zzatq1 = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          str3 = csb.q(paramParcel, k);
          break;
        case 3:
          str2 = csb.q(paramParcel, k);
          break;
        case 4:
          zzauq = csb.<zzauq>a(paramParcel, k, zzauq.CREATOR);
          break;
        case 5:
          l3 = csb.i(paramParcel, k);
          break;
        case 6:
          bool = csb.c(paramParcel, k);
          break;
        case 7:
          str1 = csb.q(paramParcel, k);
          break;
        case 8:
          zzatq3 = csb.<zzatq>a(paramParcel, k, zzatq.CREATOR);
          break;
        case 9:
          l2 = csb.i(paramParcel, k);
          break;
        case 10:
          zzatq2 = csb.<zzatq>a(paramParcel, k, zzatq.CREATOR);
          break;
        case 11:
          l1 = csb.i(paramParcel, k);
          break;
        case 12:
          zzatq1 = csb.<zzatq>a(paramParcel, k, zzatq.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzatg(i, str3, str2, zzauq, l3, bool, str1, zzatq3, l2, zzatq2, l1, zzatq1);
  }
  
  public zzatg[] a(int paramInt) {
    return new zzatg[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */