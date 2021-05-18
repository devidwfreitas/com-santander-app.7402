import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.zzo;

public class duu implements Parcelable.Creator<zzo> {
  public static void a(zzo paramzzo, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramzzo.a(), false);
    csd.a(paramParcel, 2, paramzzo.b(), false);
    csd.a(paramParcel, 3, paramzzo.c());
    csd.a(paramParcel, paramInt);
  }
  
  public zzo a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    String str1 = "";
    String str2 = "";
    int i = 0;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          str1 = csb.q(paramParcel, k);
          break;
        case 2:
          str2 = csb.q(paramParcel, k);
          break;
        case 3:
          i = csb.g(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new zzo(str1, str2, i);
  }
  
  public zzo[] a(int paramInt) {
    return new zzo[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\duu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */