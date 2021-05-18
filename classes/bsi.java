import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.LoginClient;

public final class bsi implements Parcelable.Creator {
  public LoginClient.Request a(Parcel paramParcel) {
    return new LoginClient.Request(paramParcel, null);
  }
  
  public LoginClient.Request[] a(int paramInt) {
    return new LoginClient.Request[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */