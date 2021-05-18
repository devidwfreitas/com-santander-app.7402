import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationRequest;

public class dus implements Parcelable.Creator<LocationRequest> {
  public static void a(LocationRequest paramLocationRequest, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramLocationRequest.e);
    csd.a(paramParcel, 2, paramLocationRequest.f);
    csd.a(paramParcel, 3, paramLocationRequest.g);
    csd.a(paramParcel, 4, paramLocationRequest.h);
    csd.a(paramParcel, 5, paramLocationRequest.i);
    csd.a(paramParcel, 6, paramLocationRequest.j);
    csd.a(paramParcel, 7, paramLocationRequest.k);
    csd.a(paramParcel, 8, paramLocationRequest.l);
    csd.a(paramParcel, paramInt);
  }
  
  public LocationRequest a(Parcel paramParcel) {
    int k = csb.b(paramParcel);
    int j = 102;
    long l4 = 3600000L;
    long l3 = 600000L;
    boolean bool = false;
    long l2 = Long.MAX_VALUE;
    int i = Integer.MAX_VALUE;
    float f = 0.0F;
    long l1 = 0L;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 1:
          j = csb.g(paramParcel, m);
          break;
        case 2:
          l4 = csb.i(paramParcel, m);
          break;
        case 3:
          l3 = csb.i(paramParcel, m);
          break;
        case 4:
          bool = csb.c(paramParcel, m);
          break;
        case 5:
          l2 = csb.i(paramParcel, m);
          break;
        case 6:
          i = csb.g(paramParcel, m);
          break;
        case 7:
          f = csb.l(paramParcel, m);
          break;
        case 8:
          l1 = csb.i(paramParcel, m);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new LocationRequest(j, l4, l3, bool, l2, i, f, l1);
  }
  
  public LocationRequest[] a(int paramInt) {
    return new LocationRequest[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */