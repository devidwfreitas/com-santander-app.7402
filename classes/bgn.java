import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessToken;

public final class bgn implements Parcelable.Creator {
  public AccessToken a(Parcel paramParcel) {
    return new AccessToken(paramParcel);
  }
  
  public AccessToken[] a(int paramInt) {
    return new AccessToken[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */