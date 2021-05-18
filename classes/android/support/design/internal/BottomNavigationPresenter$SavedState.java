package android.support.design.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;

class BottomNavigationPresenter$SavedState implements Parcelable {
  public static final Parcelable.Creator<BottomNavigationPresenter$SavedState> CREATOR = new BottomNavigationPresenter$SavedState$1();
  
  int selectedItemId;
  
  BottomNavigationPresenter$SavedState() {}
  
  BottomNavigationPresenter$SavedState(Parcel paramParcel) {
    this.selectedItemId = paramParcel.readInt();
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(@NonNull Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.selectedItemId);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\BottomNavigationPresenter$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */