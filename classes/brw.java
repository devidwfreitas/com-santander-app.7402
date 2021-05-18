import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.DeviceAuthMethodHandler;

public final class brw implements Parcelable.Creator {
  public DeviceAuthMethodHandler a(Parcel paramParcel) {
    return new DeviceAuthMethodHandler(paramParcel);
  }
  
  public DeviceAuthMethodHandler[] a(int paramInt) {
    return new DeviceAuthMethodHandler[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */