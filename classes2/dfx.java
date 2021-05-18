import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzacp;
import java.util.ArrayList;

public class dfx implements Parcelable.Creator<zzacp> {
  public static void a(zzacp paramzzacp, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzacp.a);
    csd.c(paramParcel, 2, paramzzacp.a(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public zzacp a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    int i = 0;
    ArrayList<?> arrayList = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          arrayList = csb.c(paramParcel, k, zzacp.zza.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzacp(i, arrayList);
  }
  
  public zzacp[] a(int paramInt) {
    return new zzacp[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dfx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */