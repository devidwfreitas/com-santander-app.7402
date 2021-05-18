import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.MapStyleOptions;

public class efq implements Parcelable.Creator<MapStyleOptions> {
  public static void a(MapStyleOptions paramMapStyleOptions, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramMapStyleOptions.a(), false);
    csd.a(paramParcel, paramInt);
  }
  
  public MapStyleOptions a(Parcel paramParcel) {
    int i = csb.b(paramParcel);
    String str = null;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          str = csb.q(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new MapStyleOptions(str);
  }
  
  public MapStyleOptions[] a(int paramInt) {
    return new MapStyleOptions[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */