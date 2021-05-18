import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzbak;

public class dqb implements Parcelable.Creator<zzbak> {
  public static void a(zzbak paramzzbak, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzbak.a);
    csd.a(paramParcel, 2, paramzzbak.b());
    csd.a(paramParcel, 3, (Parcelable)paramzzbak.c(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzbak a(Parcel paramParcel) {
    int j = 0;
    int k = csb.b(paramParcel);
    Intent intent = null;
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
          intent = csb.<Intent>a(paramParcel, m, Intent.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new zzbak(i, j, intent);
  }
  
  public zzbak[] a(int paramInt) {
    return new zzbak[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */