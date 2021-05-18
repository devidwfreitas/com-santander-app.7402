import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.gcm.OneoffTask;

public final class czf implements Parcelable.Creator<OneoffTask> {
  public OneoffTask a(Parcel paramParcel) {
    return new OneoffTask(paramParcel, null);
  }
  
  public OneoffTask[] a(int paramInt) {
    return new OneoffTask[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */