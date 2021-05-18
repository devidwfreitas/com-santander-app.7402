import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;

public class crz implements Parcelable.Creator<WebImage> {
  public static void a(WebImage paramWebImage, Parcel paramParcel, int paramInt) {
    int i = csd.a(paramParcel);
    csd.a(paramParcel, 1, paramWebImage.a);
    csd.a(paramParcel, 2, (Parcelable)paramWebImage.a(), paramInt, false);
    csd.a(paramParcel, 3, paramWebImage.b());
    csd.a(paramParcel, 4, paramWebImage.c());
    csd.a(paramParcel, i);
  }
  
  public WebImage a(Parcel paramParcel) {
    int i = 0;
    int m = csb.b(paramParcel);
    Uri uri = null;
    int j = 0;
    int k = 0;
    while (paramParcel.dataPosition() < m) {
      int n = csb.a(paramParcel);
      switch (csb.a(n)) {
        case 1:
          k = csb.g(paramParcel, n);
          break;
        case 2:
          uri = (Uri)csb.a(paramParcel, n, Uri.CREATOR);
          break;
        case 3:
          j = csb.g(paramParcel, n);
          break;
        case 4:
          i = csb.g(paramParcel, n);
          break;
      } 
    } 
    if (paramParcel.dataPosition() != m)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(m).toString(), paramParcel); 
    return new WebImage(k, uri, j, i);
  }
  
  public WebImage[] a(int paramInt) {
    return new WebImage[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */