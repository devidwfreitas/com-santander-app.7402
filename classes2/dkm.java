import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzato;
import com.google.android.gms.internal.zzatq;

public class dkm implements Parcelable.Creator<zzatq> {
  public static void a(zzatq paramzzatq, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramzzatq.a, false);
    csd.a(paramParcel, 3, (Parcelable)paramzzatq.b, paramInt, false);
    csd.a(paramParcel, 4, paramzzatq.c, false);
    csd.a(paramParcel, 5, paramzzatq.d);
    csd.a(paramParcel, i);
  }
  
  public zzatq a(Parcel paramParcel) {
    String str1 = null;
    int i = csb.b(paramParcel);
    long l = 0L;
    zzato zzato = null;
    String str2 = null;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          str2 = csb.q(paramParcel, j);
          break;
        case 3:
          zzato = csb.<zzato>a(paramParcel, j, zzato.CREATOR);
          break;
        case 4:
          str1 = csb.q(paramParcel, j);
          break;
        case 5:
          l = csb.i(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new zzatq(str2, zzato, str1, l);
  }
  
  public zzatq[] a(int paramInt) {
    return new zzatq[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */