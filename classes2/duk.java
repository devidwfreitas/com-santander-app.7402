import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.zzasm;
import com.google.android.gms.location.GeofencingRequest;
import java.util.ArrayList;

public class duk implements Parcelable.Creator<GeofencingRequest> {
  public static void a(GeofencingRequest paramGeofencingRequest, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.c(paramParcel, 1, paramGeofencingRequest.a(), false);
    csd.a(paramParcel, 2, paramGeofencingRequest.c());
    csd.a(paramParcel, 3, paramGeofencingRequest.d(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public GeofencingRequest a(Parcel paramParcel) {
    int j = csb.b(paramParcel);
    ArrayList<?> arrayList = null;
    int i = 0;
    String str = "";
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          arrayList = csb.c(paramParcel, k, zzasm.CREATOR);
          break;
        case 2:
          i = csb.g(paramParcel, k);
          break;
        case 3:
          str = csb.q(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new GeofencingRequest(arrayList, i, str);
  }
  
  public GeofencingRequest[] a(int paramInt) {
    return new GeofencingRequest[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\duk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */