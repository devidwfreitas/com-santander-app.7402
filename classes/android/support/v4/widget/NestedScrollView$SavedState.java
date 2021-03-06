package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

class NestedScrollView$SavedState extends View.BaseSavedState {
  public static final Parcelable.Creator<NestedScrollView$SavedState> CREATOR = new NestedScrollView$SavedState$1();
  
  public int scrollPosition;
  
  NestedScrollView$SavedState(Parcel paramParcel) {
    super(paramParcel);
    this.scrollPosition = paramParcel.readInt();
  }
  
  NestedScrollView$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public String toString() {
    return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.scrollPosition + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.scrollPosition);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\NestedScrollView$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */