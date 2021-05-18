package android.support.v4.view;

import android.os.Parcel;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

final class AbsSavedState$2 implements ParcelableCompatCreatorCallbacks<AbsSavedState> {
  public AbsSavedState createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader) {
    if (paramParcel.readParcelable(paramClassLoader) != null)
      throw new IllegalStateException("superState must be null"); 
    return AbsSavedState.EMPTY_STATE;
  }
  
  public AbsSavedState[] newArray(int paramInt) {
    return new AbsSavedState[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AbsSavedState$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */