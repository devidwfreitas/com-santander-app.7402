import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.BinderWrapper;

public final class csa implements Parcelable.Creator<BinderWrapper> {
  public BinderWrapper a(Parcel paramParcel) {
    return new BinderWrapper(paramParcel, null);
  }
  
  public BinderWrapper[] a(int paramInt) {
    return new BinderWrapper[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\csa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */