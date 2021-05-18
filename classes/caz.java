import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareOpenGraphObject;

public final class caz implements Parcelable.Creator<ShareOpenGraphObject> {
  public ShareOpenGraphObject a(Parcel paramParcel) {
    return new ShareOpenGraphObject(paramParcel);
  }
  
  public ShareOpenGraphObject[] a(int paramInt) {
    return new ShareOpenGraphObject[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\caz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */