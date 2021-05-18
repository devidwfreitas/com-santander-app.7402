import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzarz;

public class dik implements Parcelable.Creator<zzarz> {
  public static void a(zzarz paramzzarz, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, (Parcelable)paramzzarz.a(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzarz a(Parcel paramParcel) {
    int i = csb.b(paramParcel);
    Status status = null;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 1:
          status = csb.<Status>a(paramParcel, j, Status.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new zzarz(status);
  }
  
  public zzarz[] a(int paramInt) {
    return new zzarz[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dik.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */