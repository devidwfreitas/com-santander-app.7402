import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.model.ShareOpenGraphAction;

public final class cav implements Parcelable.Creator<ShareOpenGraphAction> {
  public ShareOpenGraphAction a(Parcel paramParcel) {
    return new ShareOpenGraphAction(paramParcel);
  }
  
  public ShareOpenGraphAction[] a(int paramInt) {
    return new ShareOpenGraphAction[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cav.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */