import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzacw;
import com.google.android.gms.internal.zzacz;

public class dgf implements Parcelable.Creator<zzacz> {
  public static void a(zzacz paramzzacz, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzacz.b());
    csd.a(paramParcel, 2, paramzzacz.c(), false);
    csd.a(paramParcel, 3, (Parcelable)paramzzacz.d(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzacz a(Parcel paramParcel) {
    zzacw zzacw = null;
    int j = csb.b(paramParcel);
    int i = 0;
    Parcel parcel = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          parcel = csb.F(paramParcel, k);
          break;
        case 3:
          zzacw = csb.<zzacw>a(paramParcel, k, zzacw.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzacz(i, parcel, zzacw);
  }
  
  public zzacz[] a(int paramInt) {
    return new zzacz[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dgf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */