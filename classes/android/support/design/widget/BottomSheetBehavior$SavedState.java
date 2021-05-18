package android.support.design.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;

public class BottomSheetBehavior$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<BottomSheetBehavior$SavedState> CREATOR = ParcelableCompat.newCreator(new BottomSheetBehavior$SavedState$1());
  
  final int state;
  
  public BottomSheetBehavior$SavedState(Parcel paramParcel) {
    this(paramParcel, (ClassLoader)null);
  }
  
  public BottomSheetBehavior$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    this.state = paramParcel.readInt();
  }
  
  public BottomSheetBehavior$SavedState(Parcelable paramParcelable, int paramInt) {
    super(paramParcelable);
    this.state = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.state);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BottomSheetBehavior$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */