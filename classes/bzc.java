import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.internal.ShareFeedContent;

public final class bzc implements Parcelable.Creator<ShareFeedContent> {
  public ShareFeedContent a(Parcel paramParcel) {
    return new ShareFeedContent(paramParcel);
  }
  
  public ShareFeedContent[] a(int paramInt) {
    return new ShareFeedContent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bzc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */