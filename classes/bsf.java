import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.LoginClient;

public final class bsf implements Parcelable.Creator {
  public LoginClient a(Parcel paramParcel) {
    return new LoginClient(paramParcel);
  }
  
  public LoginClient[] a(int paramInt) {
    return new LoginClient[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */