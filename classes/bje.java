import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.Profile;

public final class bje implements Parcelable.Creator {
  public Profile a(Parcel paramParcel) {
    return new Profile(paramParcel, null);
  }
  
  public Profile[] a(int paramInt) {
    return new Profile[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bje.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */