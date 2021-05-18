package android.support.design.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;

class BottomNavigationView$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<BottomNavigationView$SavedState> CREATOR = ParcelableCompat.newCreator(new BottomNavigationView$SavedState$1());
  
  Bundle menuPresenterState;
  
  public BottomNavigationView$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    readFromParcel(paramParcel, paramClassLoader);
  }
  
  public BottomNavigationView$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  private void readFromParcel(Parcel paramParcel, ClassLoader paramClassLoader) {
    this.menuPresenterState = paramParcel.readBundle(paramClassLoader);
  }
  
  public void writeToParcel(@NonNull Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBundle(this.menuPresenterState);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\BottomNavigationView$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */