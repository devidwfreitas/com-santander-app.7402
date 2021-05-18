import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareOpenGraphContent;

public final class cax implements Parcelable.Creator<ShareOpenGraphContent> {
  public ShareOpenGraphContent a(Parcel paramParcel) {
    return new ShareOpenGraphContent(paramParcel);
  }
  
  public ShareOpenGraphContent[] a(int paramInt) {
    return new ShareOpenGraphContent[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */