import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.Tile;

public class ega implements Parcelable.Creator<Tile> {
  public static void a(Tile paramTile, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 2, paramTile.a);
    csd.a(paramParcel, 3, paramTile.b);
    csd.a(paramParcel, 4, paramTile.c, false);
    csd.a(paramParcel, paramInt);
  }
  
  public Tile a(Parcel paramParcel) {
    int j = 0;
    int k = csb.b(paramParcel);
    byte[] arrayOfByte = null;
    int i = 0;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 2:
          i = csb.g(paramParcel, m);
          break;
        case 3:
          j = csb.g(paramParcel, m);
          break;
        case 4:
          arrayOfByte = csb.t(paramParcel, m);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new Tile(i, j, arrayOfByte);
  }
  
  public Tile[] a(int paramInt) {
    return new Tile[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ega.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */