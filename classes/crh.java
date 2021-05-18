import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.data.BitmapTeleporter;

public class crh implements Parcelable.Creator<BitmapTeleporter> {
  public static void a(BitmapTeleporter paramBitmapTeleporter, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramBitmapTeleporter.a);
    csd.a(paramParcel, 2, (Parcelable)paramBitmapTeleporter.b, paramInt, false);
    csd.a(paramParcel, 3, paramBitmapTeleporter.c);
    csd.a(paramParcel, i);
  }
  
  public BitmapTeleporter a(Parcel paramParcel) {
    int i = 0;
    int k = csb.b(paramParcel);
    ParcelFileDescriptor parcelFileDescriptor = null;
    int j = 0;
    while (paramParcel.dataPosition() < k) {
      int m = csb.a(paramParcel);
      switch (csb.a(m)) {
        case 1:
          j = csb.g(paramParcel, m);
          break;
        case 2:
          parcelFileDescriptor = (ParcelFileDescriptor)csb.a(paramParcel, m, ParcelFileDescriptor.CREATOR);
          break;
        case 3:
          i = csb.g(paramParcel, m);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != k)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(k).toString(), paramParcel); 
    return new BitmapTeleporter(j, parcelFileDescriptor, i);
  }
  
  public BitmapTeleporter[] a(int paramInt) {
    return new BitmapTeleporter[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */