import android.os.Parcel;
import android.os.Parcelable;
import com.airbnb.lottie.LottieAnimationView;

public final class awq implements Parcelable.Creator<LottieAnimationView.SavedState> {
  public LottieAnimationView.SavedState a(Parcel paramParcel) {
    return new LottieAnimationView.SavedState(paramParcel, null);
  }
  
  public LottieAnimationView.SavedState[] a(int paramInt) {
    return new LottieAnimationView.SavedState[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\awq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */