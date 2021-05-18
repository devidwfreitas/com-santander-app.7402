import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzarw;
import com.google.android.gms.location.zzd;
import com.google.android.gms.location.zzf;
import java.util.ArrayList;

public class dui implements Parcelable.Creator<zzf> {
  public static void a(zzf paramzzf, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.c(paramParcel, 1, paramzzf.a(), false);
    csd.a(paramParcel, 2, paramzzf.b(), false);
    csd.c(paramParcel, 3, paramzzf.c(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public zzf a(Parcel paramParcel) {
    ArrayList<?> arrayList2 = null;
    int i = csb.b(paramParcel);
    String str = null;
    ArrayList<?> arrayList1 = null;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 1:
          arrayList1 = csb.c(paramParcel, j, zzd.CREATOR);
          break;
        case 2:
          str = csb.q(paramParcel, j);
          break;
        case 3:
          arrayList2 = csb.c(paramParcel, j, zzarw.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new zzf(arrayList1, str, arrayList2);
  }
  
  public zzf[] a(int paramInt) {
    return new zzf[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dui.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */