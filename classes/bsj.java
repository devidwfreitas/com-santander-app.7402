import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.LoginClient;

public final class bsj implements Parcelable.Creator {
  public LoginClient.Result a(Parcel paramParcel) {
    return new LoginClient.Result(paramParcel, null);
  }
  
  public LoginClient.Result[] a(int paramInt) {
    return new LoginClient.Result[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */