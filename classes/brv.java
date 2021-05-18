import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.DeviceAuthDialog;

public final class brv implements Parcelable.Creator<DeviceAuthDialog.RequestState> {
  public DeviceAuthDialog.RequestState a(Parcel paramParcel) {
    return new DeviceAuthDialog.RequestState(paramParcel);
  }
  
  public DeviceAuthDialog.RequestState[] a(int paramInt) {
    return new DeviceAuthDialog.RequestState[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */