import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.FacebookRequestError;

public final class bhs implements Parcelable.Creator<FacebookRequestError> {
  public FacebookRequestError a(Parcel paramParcel) {
    return new FacebookRequestError(paramParcel, null);
  }
  
  public FacebookRequestError[] a(int paramInt) {
    return new FacebookRequestError[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */