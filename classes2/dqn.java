import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.internal.zzbaw;

public class dqn implements Parcelable.Creator<zzbaw> {
  public static void a(zzbaw paramzzbaw, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzbaw.a);
    csd.a(paramParcel, 2, (Parcelable)paramzzbaw.a(), paramInt, false);
    csd.a(paramParcel, 3, (Parcelable)paramzzbaw.b(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzbaw a(Parcel paramParcel) {
    zzaf zzaf = null;
    int j = csb.b(paramParcel);
    int i = 0;
    ConnectionResult connectionResult = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          connectionResult = csb.<ConnectionResult>a(paramParcel, k, ConnectionResult.CREATOR);
          break;
        case 3:
          zzaf = csb.<zzaf>a(paramParcel, k, zzaf.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzbaw(i, connectionResult, zzaf);
  }
  
  public zzbaw[] a(int paramInt) {
    return new zzbaw[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */