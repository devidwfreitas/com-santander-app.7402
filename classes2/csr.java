import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.zzaf;

public class csr implements Parcelable.Creator<zzaf> {
  public static void a(zzaf paramzzaf, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzaf.a);
    csd.a(paramParcel, 2, paramzzaf.b, false);
    csd.a(paramParcel, 3, (Parcelable)paramzzaf.b(), paramInt, false);
    csd.a(paramParcel, 4, paramzzaf.c());
    csd.a(paramParcel, 5, paramzzaf.d());
    csd.a(paramParcel, i);
  }
  
  public zzaf a(Parcel paramParcel) {
    ConnectionResult connectionResult = null;
    boolean bool1 = false;
    int j = csb.b(paramParcel);
    boolean bool2 = false;
    IBinder iBinder = null;
    int i = 0;
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
          connectionResult = csb.<ConnectionResult>a(paramParcel, k, ConnectionResult.CREATOR);
          break;
        case 4:
          bool2 = csb.c(paramParcel, k);
          break;
        case 5:
          bool1 = csb.c(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzaf(i, iBinder, connectionResult, bool2, bool1);
  }
  
  public zzaf[] a(int paramInt) {
    return new zzaf[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */