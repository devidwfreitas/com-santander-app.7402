import android.net.Uri;
import android.os.Parcel;
import android.support.annotation.Nullable;
import com.facebook.share.model.ShareMedia;
import com.facebook.share.model.ShareModel;
import com.facebook.share.model.ShareVideo;

public final class cbh extends caq<ShareVideo, cbh> {
  private Uri a;
  
  public cbh a(@Nullable Uri paramUri) {
    this.a = paramUri;
    return this;
  }
  
  public cbh a(ShareVideo paramShareVideo) {
    return (paramShareVideo == null) ? this : ((cbh)super.a(paramShareVideo)).a(paramShareVideo.c());
  }
  
  public cbh b(Parcel paramParcel) {
    return a((ShareVideo)paramParcel.readParcelable(ShareVideo.class.getClassLoader()));
  }
  
  public ShareVideo b() {
    return new ShareVideo(this, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cbh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */