import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzayz;

public class dpq implements Parcelable.Creator<zzayz> {
  public static void a(zzayz paramzzayz, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramzzayz.a, false);
    csd.a(paramParcel, 3, paramzzayz.b);
    csd.a(paramParcel, 4, paramzzayz.c);
    csd.a(paramParcel, 5, paramzzayz.d);
    csd.a(paramParcel, 6, paramzzayz.e, false);
    csd.a(paramParcel, 7, paramzzayz.f, false);
    csd.a(paramParcel, 8, paramzzayz.g);
    csd.a(paramParcel, 9, paramzzayz.h);
    csd.a(paramParcel, paramInt);
  }
  
  public zzayz a(Parcel paramParcel) {
    byte[] arrayOfByte = null;
    int i = 0;
    int k = csb.b(paramParcel);
    long l = 0L;
    double d = 0.0D;
    int j = 0;
    String str1 = null;
    boolean bool = false;
    String str2 = null;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 2:
          str2 = csb.q(paramParcel, m);
          break;
        case 3:
          l = csb.i(paramParcel, m);
          break;
        case 4:
          bool = csb.c(paramParcel, m);
          break;
        case 5:
          d = csb.n(paramParcel, m);
          break;
        case 6:
          str1 = csb.q(paramParcel, m);
          break;
        case 7:
          arrayOfByte = csb.t(paramParcel, m);
          break;
        case 8:
          j = csb.g(paramParcel, m);
          break;
        case 9:
          i = csb.g(paramParcel, m);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new zzayz(str2, l, bool, d, str1, arrayOfByte, j, i);
  }
  
  public zzayz[] a(int paramInt) {
    return new zzayz[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */