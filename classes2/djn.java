import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzasm;

public class djn implements Parcelable.Creator<zzasm> {
  public static void a(zzasm paramzzasm, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzasm.e(), false);
    csd.a(paramParcel, 2, paramzzasm.f());
    csd.a(paramParcel, 3, paramzzasm.a());
    csd.a(paramParcel, 4, paramzzasm.b());
    csd.a(paramParcel, 5, paramzzasm.c());
    csd.a(paramParcel, 6, paramzzasm.d());
    csd.a(paramParcel, 7, paramzzasm.g());
    csd.a(paramParcel, 8, paramzzasm.h());
    csd.a(paramParcel, 9, paramzzasm.i());
    csd.a(paramParcel, paramInt);
  }
  
  public zzasm a(Parcel paramParcel) {
    int m = csb.b(paramParcel);
    String str = null;
    int k = 0;
    short s = 0;
    double d2 = 0.0D;
    double d1 = 0.0D;
    float f = 0.0F;
    long l = 0L;
    int j = 0;
    int i = -1;
    while (paramParcel.dataPosition() < m) {
      int n = csb.a(paramParcel);
      switch (csb.a(n)) {
        case 1:
          str = csb.q(paramParcel, n);
          break;
        case 2:
          l = csb.i(paramParcel, n);
          break;
        case 3:
          s = csb.f(paramParcel, n);
          break;
        case 4:
          d2 = csb.n(paramParcel, n);
          break;
        case 5:
          d1 = csb.n(paramParcel, n);
          break;
        case 6:
          f = csb.l(paramParcel, n);
          break;
        case 7:
          k = csb.g(paramParcel, n);
          break;
        case 8:
          j = csb.g(paramParcel, n);
          break;
        case 9:
          i = csb.g(paramParcel, n);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != m)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(m).toString(), paramParcel); 
    return new zzasm(str, k, s, d2, d1, f, l, j, i);
  }
  
  public zzasm[] a(int paramInt) {
    return new zzasm[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */