import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.gcm.PeriodicTask;

public final class czi implements Parcelable.Creator<PeriodicTask> {
  public PeriodicTask a(Parcel paramParcel) {
    return new PeriodicTask(paramParcel, null);
  }
  
  public PeriodicTask[] a(int paramInt) {
    return new PeriodicTask[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */