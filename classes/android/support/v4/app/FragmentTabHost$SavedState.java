package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

class FragmentTabHost$SavedState extends View.BaseSavedState {
  public static final Parcelable.Creator<FragmentTabHost$SavedState> CREATOR = new FragmentTabHost$SavedState$1();
  
  String curTab;
  
  FragmentTabHost$SavedState(Parcel paramParcel) {
    super(paramParcel);
    this.curTab = paramParcel.readString();
  }
  
  FragmentTabHost$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public String toString() {
    return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.curTab + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.curTab);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTabHost$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */