import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.gcm.PendingCallback;

public final class czh implements Parcelable.Creator<PendingCallback> {
  public PendingCallback a(Parcel paramParcel) {
    return new PendingCallback(paramParcel);
  }
  
  public PendingCallback[] a(int paramInt) {
    return new PendingCallback[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */