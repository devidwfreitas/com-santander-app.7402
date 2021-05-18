import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareVideo;

public final class cbg implements Parcelable.Creator<ShareVideo> {
  public ShareVideo a(Parcel paramParcel) {
    return new ShareVideo(paramParcel);
  }
  
  public ShareVideo[] a(int paramInt) {
    return new ShareVideo[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */