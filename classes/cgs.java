import android.os.Parcel;
import android.os.Parcelable;
import com.github.mikephil.charting.data.Entry;

public final class cgs implements Parcelable.Creator<Entry> {
  public Entry a(Parcel paramParcel) {
    return new Entry(paramParcel);
  }
  
  public Entry[] a(int paramInt) {
    return new Entry[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cgs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */