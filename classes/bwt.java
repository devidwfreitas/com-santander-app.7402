import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.share.internal.DeviceShareDialogFragment;

public final class bwt implements Parcelable.Creator<DeviceShareDialogFragment.RequestState> {
  public DeviceShareDialogFragment.RequestState a(Parcel paramParcel) {
    return new DeviceShareDialogFragment.RequestState(paramParcel);
  }
  
  public DeviceShareDialogFragment.RequestState[] a(int paramInt) {
    return new DeviceShareDialogFragment.RequestState[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bwt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */