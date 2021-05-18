import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.TileOverlayOptions;

public class egb implements Parcelable.Creator<TileOverlayOptions> {
  public static void a(TileOverlayOptions paramTileOverlayOptions, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramTileOverlayOptions.a(), false);
    csd.a(paramParcel, 3, paramTileOverlayOptions.d());
    csd.a(paramParcel, 4, paramTileOverlayOptions.c());
    csd.a(paramParcel, 5, paramTileOverlayOptions.e());
    csd.a(paramParcel, 6, paramTileOverlayOptions.f());
    csd.a(paramParcel, paramInt);
  }
  
  public TileOverlayOptions a(Parcel paramParcel) {
    float f1 = 0.0F;
    int i = csb.b(paramParcel);
    IBinder iBinder = null;
    boolean bool2 = false;
    boolean bool1 = true;
    float f2 = 0.0F;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      switch (csb.a(j)) {
        case 2:
          iBinder = csb.r(paramParcel, j);
          break;
        case 3:
          bool2 = csb.c(paramParcel, j);
          break;
        case 4:
          f2 = csb.l(paramParcel, j);
          break;
        case 5:
          bool1 = csb.c(paramParcel, j);
          break;
        case 6:
          f1 = csb.l(paramParcel, j);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    return new TileOverlayOptions(iBinder, bool2, f2, bool1, f1);
  }
  
  public TileOverlayOptions[] a(int paramInt) {
    return new TileOverlayOptions[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\egb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */