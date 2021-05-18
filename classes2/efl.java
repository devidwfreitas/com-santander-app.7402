import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.Cap;

public class efl implements Parcelable.Creator<Cap> {
  public static void a(Cap paramCap, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramCap.a());
    csd.a(paramParcel, 3, paramCap.c(), false);
    csd.a(paramParcel, 4, paramCap.b(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public Cap a(Parcel paramParcel) {
    Float float_ = null;
    int j = csb.b(paramParcel);
    int i = 0;
    IBinder iBinder = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 2:
          i = csb.g(paramParcel, k);
          break;
        case 3:
          iBinder = csb.r(paramParcel, k);
          break;
        case 4:
          float_ = csb.m(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new Cap(i, iBinder, float_);
  }
  
  public Cap[] a(int paramInt) {
    return new Cap[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */