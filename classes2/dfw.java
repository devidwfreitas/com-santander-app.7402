import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzacn;
import com.google.android.gms.internal.zzacp;

public class dfw implements Parcelable.Creator<zzacn> {
  public static void a(zzacn paramzzacn, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzacn.a);
    csd.a(paramParcel, 2, (Parcelable)paramzzacn.a(), paramInt, false);
    csd.a(paramParcel, i);
  }
  
  public zzacn a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    int i = 0;
    zzacp zzacp = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          zzacp = csb.<zzacp>a(paramParcel, k, zzacp.CREATOR);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzacn(i, zzacp);
  }
  
  public zzacn[] a(int paramInt) {
    return new zzacn[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dfw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */