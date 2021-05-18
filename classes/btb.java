import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.WebViewLoginMethodHandler;

public final class btb implements Parcelable.Creator {
  public WebViewLoginMethodHandler a(Parcel paramParcel) {
    return new WebViewLoginMethodHandler(paramParcel);
  }
  
  public WebViewLoginMethodHandler[] a(int paramInt) {
    return new WebViewLoginMethodHandler[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */