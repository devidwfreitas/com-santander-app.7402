import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzatd;

public class djx implements Parcelable.Creator<zzatd> {
  public static void a(zzatd paramzzatd, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramzzatd.a, false);
    csd.a(paramParcel, 3, paramzzatd.b, false);
    csd.a(paramParcel, 4, paramzzatd.c, false);
    csd.a(paramParcel, 5, paramzzatd.d, false);
    csd.a(paramParcel, 6, paramzzatd.e);
    csd.a(paramParcel, 7, paramzzatd.f);
    csd.a(paramParcel, 8, paramzzatd.g, false);
    csd.a(paramParcel, 9, paramzzatd.h);
    csd.a(paramParcel, 10, paramzzatd.i);
    csd.a(paramParcel, 11, paramzzatd.j);
    csd.a(paramParcel, 12, paramzzatd.k, false);
    csd.a(paramParcel, 13, paramzzatd.l);
    csd.a(paramParcel, paramInt);
  }
  
  public zzatd a(Parcel paramParcel) {
    int i = csb.b(paramParcel);
    String str6 = null;
    String str5 = null;
    String str4 = null;
    String str3 = null;
    long l4 = 0L;
    long l3 = 0L;
    String str2 = null;
    boolean bool2 = true;
    boolean bool1 = false;
    long l2 = -2147483648L;
    String str1 = null;
    long l1 = 0L;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          str6 = csb.q(paramParcel, j);
          break;
        case 3:
          str5 = csb.q(paramParcel, j);
          break;
        case 4:
          str4 = csb.q(paramParcel, j);
          break;
        case 5:
          str3 = csb.q(paramParcel, j);
          break;
        case 6:
          l4 = csb.i(paramParcel, j);
          break;
        case 7:
          l3 = csb.i(paramParcel, j);
          break;
        case 8:
          str2 = csb.q(paramParcel, j);
          break;
        case 9:
          bool2 = csb.c(paramParcel, j);
          break;
        case 10:
          bool1 = csb.c(paramParcel, j);
          break;
        case 11:
          l2 = csb.i(paramParcel, j);
          break;
        case 12:
          str1 = csb.q(paramParcel, j);
          break;
        case 13:
          l1 = csb.i(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new zzatd(str6, str5, str4, str3, l4, l3, str2, bool2, bool1, l2, str1, l1);
  }
  
  public zzatd[] a(int paramInt) {
    return new zzatd[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */