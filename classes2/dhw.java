import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzarw;

public class dhw implements Parcelable.Creator<zzarw> {
  public static void a(zzarw paramzzarw, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzarw.a);
    csd.a(paramParcel, 2, paramzzarw.b, false);
    csd.a(paramParcel, paramInt);
  }
  
  public zzarw a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    int i = 0;
    String str = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          str = csb.q(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzarw(i, str);
  }
  
  public zzarw[] a(int paramInt) {
    return new zzarw[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */