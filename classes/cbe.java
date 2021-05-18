import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.SharePhotoContent;

public final class cbe implements Parcelable.Creator<SharePhotoContent> {
  public SharePhotoContent a(Parcel paramParcel) {
    return new SharePhotoContent(paramParcel);
  }
  
  public SharePhotoContent[] a(int paramInt) {
    return new SharePhotoContent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */