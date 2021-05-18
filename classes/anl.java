import android.os.Parcel;
import android.os.Parcelable;
import br.com.santander.uisdk.error.SantanderErrorItem;

public final class anl implements Parcelable.Creator<SantanderErrorItem> {
  public SantanderErrorItem a(Parcel paramParcel) {
    return new SantanderErrorItem(paramParcel, null);
  }
  
  public SantanderErrorItem[] a(int paramInt) {
    return new SantanderErrorItem[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\anl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */