import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareMediaContent;

public final class cas implements Parcelable.Creator<ShareMediaContent> {
  public ShareMediaContent a(Parcel paramParcel) {
    return new ShareMediaContent(paramParcel);
  }
  
  public ShareMediaContent[] a(int paramInt) {
    return new ShareMediaContent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cas.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */