import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzarw;
import com.google.android.gms.internal.zzasi;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public class djl implements Parcelable.Creator<zzasi> {
  public static void a(zzasi paramzzasi, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, (Parcelable)paramzzasi.b, paramInt, false);
    csd.c(paramParcel, 5, paramzzasi.c, false);
    csd.a(paramParcel, 6, paramzzasi.d, false);
    csd.a(paramParcel, 7, paramzzasi.e);
    csd.a(paramParcel, 8, paramzzasi.f);
    csd.a(paramParcel, i);
  }
  
  public zzasi a(Parcel paramParcel) {
    String str = null;
    boolean bool1 = false;
    int i = csb.b(paramParcel);
    List<?> list = zzasi.a;
    boolean bool2 = false;
    LocationRequest locationRequest = null;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 1:
          locationRequest = csb.<LocationRequest>a(paramParcel, j, LocationRequest.CREATOR);
          break;
        case 5:
          list = csb.c(paramParcel, j, zzarw.CREATOR);
          break;
        case 6:
          str = csb.q(paramParcel, j);
          break;
        case 7:
          bool2 = csb.c(paramParcel, j);
          break;
        case 8:
          bool1 = csb.c(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new zzasi(locationRequest, list, str, bool2, bool1);
  }
  
  public zzasi[] a(int paramInt) {
    return new zzasi[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\djl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */