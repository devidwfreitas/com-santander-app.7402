import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.iid.MessengerCompat;

public final class czv implements Parcelable.Creator<MessengerCompat> {
  public MessengerCompat a(Parcel paramParcel) {
    IBinder iBinder = paramParcel.readStrongBinder();
    return (iBinder != null) ? new MessengerCompat(iBinder) : null;
  }
  
  public MessengerCompat[] a(int paramInt) {
    return new MessengerCompat[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */