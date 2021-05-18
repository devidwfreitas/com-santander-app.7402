import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.FavaDiagnosticsEntity;

public class cve implements Parcelable.Creator<FavaDiagnosticsEntity> {
  public static void a(FavaDiagnosticsEntity paramFavaDiagnosticsEntity, Parcel paramParcel, int paramInt) {
    paramInt = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramFavaDiagnosticsEntity.a);
    csd.a(paramParcel, 2, paramFavaDiagnosticsEntity.b, false);
    csd.a(paramParcel, 3, paramFavaDiagnosticsEntity.c);
    csd.a(paramParcel, paramInt);
  }
  
  public FavaDiagnosticsEntity a(Parcel paramParcel) {
    int j = 0;
    int k = csb.b(paramParcel);
    String str = null;
    int i = 0;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 1:
          i = csb.g(paramParcel, m);
          break;
        case 2:
          str = csb.q(paramParcel, m);
          break;
        case 3:
          j = csb.g(paramParcel, m);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new FavaDiagnosticsEntity(i, str, j);
  }
  
  public FavaDiagnosticsEntity[] a(int paramInt) {
    return new FavaDiagnosticsEntity[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cve.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */