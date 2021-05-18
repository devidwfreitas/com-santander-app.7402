import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzayx;
import com.google.android.gms.internal.zzayz;

public class dpo implements Parcelable.Creator<zzayx> {
  public static void a(zzayx paramzzayx, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramzzayx.a);
    csd.a(paramParcel, 3, paramzzayx.b, paramInt, false);
    csd.a(paramParcel, 4, paramzzayx.c, false);
    csd.a(paramParcel, i);
  }
  
  public zzayx a(Parcel paramParcel) {
    String[] arrayOfString = null;
    int j = csb.b(paramParcel);
    int i = 0;
    zzayz[] arrayOfZzayz = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 2:
          i = csb.g(paramParcel, k);
          break;
        case 3:
          arrayOfZzayz = csb.<zzayz>b(paramParcel, k, zzayz.CREATOR);
          break;
        case 4:
          arrayOfString = csb.C(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzayx(i, arrayOfZzayz, arrayOfString);
  }
  
  public zzayx[] a(int paramInt) {
    return new zzayx[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */