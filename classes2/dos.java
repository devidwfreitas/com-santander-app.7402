import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzauq;

public class dos implements Parcelable.Creator<zzauq> {
  public static void a(zzauq paramzzauq, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzauq.a);
    csd.a(paramParcel, 2, paramzzauq.b, false);
    csd.a(paramParcel, 3, paramzzauq.c);
    csd.a(paramParcel, 4, paramzzauq.d, false);
    csd.a(paramParcel, 5, paramzzauq.e, false);
    csd.a(paramParcel, 6, paramzzauq.f, false);
    csd.a(paramParcel, 7, paramzzauq.g, false);
    csd.a(paramParcel, 8, paramzzauq.h, false);
    csd.a(paramParcel, paramInt);
  }
  
  public zzauq a(Parcel paramParcel) {
    Double double_ = null;
    int j = csb.b(paramParcel);
    int i = 0;
    long l = 0L;
    String str1 = null;
    String str2 = null;
    Float float_ = null;
    Long long_ = null;
    String str3 = null;
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
          l = csb.i(paramParcel, k);
          break;
        case 4:
          long_ = csb.j(paramParcel, k);
          break;
        case 5:
          float_ = csb.m(paramParcel, k);
          break;
        case 6:
          str2 = csb.q(paramParcel, k);
          break;
        case 7:
          str1 = csb.q(paramParcel, k);
          break;
        case 8:
          double_ = csb.o(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzauq(i, str3, l, long_, float_, str2, str1, double_);
  }
  
  public zzauq[] a(int paramInt) {
    return new zzauq[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dos.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */