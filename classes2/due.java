import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.location.zza;

public class due implements Parcelable.Creator<zza> {
  public static void a(zza paramzza, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzza.a());
    csd.a(paramParcel, 2, paramzza.b());
    csd.a(paramParcel, 3, (Parcelable)paramzza.c(), paramInt, false);
    csd.a(paramParcel, 4, paramzza.d(), false);
    csd.a(paramParcel, 5, paramzza.e(), false);
    csd.a(paramParcel, 6, paramzza.f());
    csd.a(paramParcel, 7, paramzza.g(), false);
    csd.a(paramParcel, 8, paramzza.h());
    csd.a(paramParcel, i);
  }
  
  public zza a(Parcel paramParcel) {
    long l1 = 0L;
    boolean bool1 = false;
    String str1 = null;
    int i = csb.b(paramParcel);
    int[] arrayOfInt = null;
    String str2 = null;
    WorkSource workSource = null;
    boolean bool2 = false;
    long l2 = 0L;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 1:
          l2 = csb.i(paramParcel, j);
          break;
        case 2:
          bool2 = csb.c(paramParcel, j);
          break;
        case 3:
          workSource = csb.<WorkSource>a(paramParcel, j, WorkSource.CREATOR);
          break;
        case 4:
          str2 = csb.q(paramParcel, j);
          break;
        case 5:
          arrayOfInt = csb.w(paramParcel, j);
          break;
        case 6:
          bool1 = csb.c(paramParcel, j);
          break;
        case 7:
          str1 = csb.q(paramParcel, j);
          break;
        case 8:
          l1 = csb.i(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new zza(l2, bool2, workSource, str2, arrayOfInt, bool1, str1, l1);
  }
  
  public zza[] a(int paramInt) {
    return new zza[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\due.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */