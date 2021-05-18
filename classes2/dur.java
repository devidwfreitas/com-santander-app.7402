import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationAvailability;

public class dur implements Parcelable.Creator<LocationAvailability> {
  public static void a(LocationAvailability paramLocationAvailability, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramLocationAvailability.a);
    csd.a(paramParcel, 2, paramLocationAvailability.b);
    csd.a(paramParcel, 3, paramLocationAvailability.c);
    csd.a(paramParcel, 4, paramLocationAvailability.d);
    csd.a(paramParcel, paramInt);
  }
  
  public LocationAvailability a(Parcel paramParcel) {
    int i = 1;
    int m = csb.b(paramParcel);
    int k = 1000;
    long l = 0L;
    int j = 1;
    while (paramParcel.dataPosition() < m) {
      int n = csb.a(paramParcel);
      switch (csb.a(n)) {
        case 1:
          j = csb.g(paramParcel, n);
          break;
        case 2:
          i = csb.g(paramParcel, n);
          break;
        case 3:
          l = csb.i(paramParcel, n);
          break;
        case 4:
          k = csb.g(paramParcel, n);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != m)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(m).toString(), paramParcel); 
    return new LocationAvailability(k, j, i, l);
  }
  
  public LocationAvailability[] a(int paramInt) {
    return new LocationAvailability[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dur.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */