import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.SharePhoto;

public final class cbc implements Parcelable.Creator<SharePhoto> {
  public SharePhoto a(Parcel paramParcel) {
    return new SharePhoto(paramParcel);
  }
  
  public SharePhoto[] a(int paramInt) {
    return new SharePhoto[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */