import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzan;

public class csw implements Parcelable.Creator<zzan> {
  public static void a(zzan paramzzan, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzan.a);
    csd.a(paramParcel, paramInt);
  }
  
  public zzan a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    int i = 0;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzan(i);
  }
  
  public zzan[] a(int paramInt) {
    return new zzan[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */