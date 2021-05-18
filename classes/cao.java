import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareLinkContent;

public final class cao implements Parcelable.Creator<ShareLinkContent> {
  public ShareLinkContent a(Parcel paramParcel) {
    return new ShareLinkContent(paramParcel);
  }
  
  public ShareLinkContent[] a(int paramInt) {
    return new ShareLinkContent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cao.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */