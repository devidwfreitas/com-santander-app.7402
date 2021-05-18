package android.support.design.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;

public class NavigationView$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<NavigationView$SavedState> CREATOR = ParcelableCompat.newCreator(new NavigationView$SavedState$1());
  
  public Bundle menuState;
  
  public NavigationView$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    this.menuState = paramParcel.readBundle(paramClassLoader);
  }
  
  public NavigationView$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public void writeToParcel(@NonNull Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBundle(this.menuState);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\NavigationView$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */