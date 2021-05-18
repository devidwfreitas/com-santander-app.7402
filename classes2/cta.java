import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzd;

public class cta implements Parcelable.Creator<zzd> {
  public static void a(zzd paramzzd, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzd.a);
    csd.a(paramParcel, 2, paramzzd.b, false);
    csd.a(paramParcel, 3, paramzzd.c, paramInt, false);
    csd.a(paramParcel, 4, paramzzd.d, false);
    csd.a(paramParcel, 5, paramzzd.e, false);
    csd.a(paramParcel, i);
  }
  
  public zzd a(Parcel paramParcel) {
    Integer integer1 = null;
    int j = csb.b(paramParcel);
    int i = 0;
    Integer integer2 = null;
    Scope[] arrayOfScope = null;
    IBinder iBinder = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          iBinder = csb.r(paramParcel, k);
          break;
        case 3:
          arrayOfScope = csb.<Scope>b(paramParcel, k, Scope.CREATOR);
          break;
        case 4:
          integer2 = csb.h(paramParcel, k);
          break;
        case 5:
          integer1 = csb.h(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzd(i, iBinder, arrayOfScope, integer2, integer1);
  }
  
  public zzd[] a(int paramInt) {
    return new zzd[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cta.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */