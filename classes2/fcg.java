import android.os.Parcel;
import android.os.Parcelable;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;

public final class fcg implements Parcelable.Creator<SlidingMenu.SavedState> {
  public SlidingMenu.SavedState a(Parcel paramParcel) {
    return new SlidingMenu.SavedState(paramParcel, null);
  }
  
  public SlidingMenu.SavedState[] a(int paramInt) {
    return new SlidingMenu.SavedState[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fcg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */