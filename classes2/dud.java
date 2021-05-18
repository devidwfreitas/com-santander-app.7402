import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.places.PlaceReport;

public class dud implements Parcelable.Creator<PlaceReport> {
  public static void a(PlaceReport paramPlaceReport, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramPlaceReport.a);
    csd.a(paramParcel, 2, paramPlaceReport.a(), false);
    csd.a(paramParcel, 3, paramPlaceReport.b(), false);
    csd.a(paramParcel, 4, paramPlaceReport.c(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public PlaceReport a(Parcel paramParcel) {
    String str3 = null;
    int j = csb.b(paramParcel);
    int i = 0;
    String str2 = null;
    String str1 = null;
    while (paramParcel.dataPosition() < j) {
      int k = csb.a(paramParcel);
      switch (csb.a(k)) {
        case 1:
          i = csb.g(paramParcel, k);
          break;
        case 2:
          str1 = csb.q(paramParcel, k);
          break;
        case 3:
          str2 = csb.q(paramParcel, k);
          break;
        case 4:
          str3 = csb.q(paramParcel, k);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != j)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(j).toString(), paramParcel); 
    return new PlaceReport(i, str1, str2, str3);
  }
  
  public PlaceReport[] a(int paramInt) {
    return new PlaceReport[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dud.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */