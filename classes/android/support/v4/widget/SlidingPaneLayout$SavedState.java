package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;

class SlidingPaneLayout$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<SlidingPaneLayout$SavedState> CREATOR = ParcelableCompat.newCreator(new SlidingPaneLayout$SavedState$1());
  
  boolean isOpen;
  
  SlidingPaneLayout$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    boolean bool;
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.isOpen = bool;
  }
  
  SlidingPaneLayout$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    if (this.isOpen) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SlidingPaneLayout$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */