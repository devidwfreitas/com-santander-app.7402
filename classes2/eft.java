import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PointOfInterest;

public class eft implements Parcelable.Creator<PointOfInterest> {
  public static void a(PointOfInterest paramPointOfInterest, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 2, (Parcelable)paramPointOfInterest.a, paramInt, false);
    csd.a(paramParcel, 3, paramPointOfInterest.b, false);
    csd.a(paramParcel, 4, paramPointOfInterest.c, false);
    csd.a(paramParcel, i);
  }
  
  public PointOfInterest a(Parcel paramParcel) {
    String str2;
    String str1 = null;
    int i = csb.b(paramParcel);
    LatLng latLng2 = null;
    LatLng latLng1 = null;
    while (paramParcel.dataPosition() < i) {
      String str4;
      LatLng latLng3;
      String str3;
      String str5;
      LatLng latLng4;
      LatLng latLng6;
      String str6;
      LatLng latLng5;
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          latLng6 = csb.<LatLng>a(paramParcel, j, LatLng.CREATOR);
          latLng1 = latLng2;
          latLng2 = latLng6;
          latLng6 = latLng2;
          latLng2 = latLng1;
          latLng1 = latLng6;
          break;
        case 3:
          str6 = csb.q(paramParcel, j);
          latLng2 = latLng1;
          str4 = str6;
          latLng5 = latLng2;
          str5 = str4;
          latLng3 = latLng5;
          break;
        case 4:
          str1 = csb.q(paramParcel, j);
          latLng5 = latLng3;
          str3 = str5;
          latLng4 = latLng5;
          latLng5 = latLng4;
          str2 = str3;
          latLng1 = latLng5;
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new PointOfInterest(latLng1, str2, str1);
  }
  
  public PointOfInterest[] a(int paramInt) {
    return new PointOfInterest[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eft.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */