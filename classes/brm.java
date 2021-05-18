import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.login.CustomTabLoginMethodHandler;

public final class brm implements Parcelable.Creator {
  public CustomTabLoginMethodHandler a(Parcel paramParcel) {
    return new CustomTabLoginMethodHandler(paramParcel);
  }
  
  public CustomTabLoginMethodHandler[] a(int paramInt) {
    return new CustomTabLoginMethodHandler[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */