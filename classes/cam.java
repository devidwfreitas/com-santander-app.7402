import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareHashtag;

public final class cam implements Parcelable.Creator<ShareHashtag> {
  public ShareHashtag a(Parcel paramParcel) {
    return new ShareHashtag(paramParcel);
  }
  
  public ShareHashtag[] a(int paramInt) {
    return new ShareHashtag[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cam.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */