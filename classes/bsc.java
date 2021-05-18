import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.GetTokenLoginMethodHandler;

public final class bsc implements Parcelable.Creator {
  public GetTokenLoginMethodHandler a(Parcel paramParcel) {
    return new GetTokenLoginMethodHandler(paramParcel);
  }
  
  public GetTokenLoginMethodHandler[] a(int paramInt) {
    return new GetTokenLoginMethodHandler[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bsc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */