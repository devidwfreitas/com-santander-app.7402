import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareVideoContent;

public final class cbi implements Parcelable.Creator<ShareVideoContent> {
  public ShareVideoContent a(Parcel paramParcel) {
    return new ShareVideoContent(paramParcel);
  }
  
  public ShareVideoContent[] a(int paramInt) {
    return new ShareVideoContent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */