import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.FacebookLiteLoginMethodHandler;

public final class bry implements Parcelable.Creator {
  public FacebookLiteLoginMethodHandler a(Parcel paramParcel) {
    return new FacebookLiteLoginMethodHandler(paramParcel);
  }
  
  public FacebookLiteLoginMethodHandler[] a(int paramInt) {
    return new FacebookLiteLoginMethodHandler[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */