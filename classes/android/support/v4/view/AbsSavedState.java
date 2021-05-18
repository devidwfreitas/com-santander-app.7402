package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;

public abstract class AbsSavedState implements Parcelable {
  public static final Parcelable.Creator<AbsSavedState> CREATOR;
  
  public static final AbsSavedState EMPTY_STATE = new AbsSavedState$1();
  
  private final Parcelable mSuperState;
  
  static {
    CREATOR = ParcelableCompat.newCreator(new AbsSavedState$2());
  }
  
  private AbsSavedState() {
    this.mSuperState = null;
  }
  
  protected AbsSavedState(Parcel paramParcel) {
    this(paramParcel, null);
  }
  
  public AbsSavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    Parcelable parcelable = paramParcel.readParcelable(paramClassLoader);
    if (parcelable == null)
      parcelable = EMPTY_STATE; 
    this.mSuperState = parcelable;
  }
  
  public AbsSavedState(Parcelable paramParcelable) {
    if (paramParcelable == null)
      throw new IllegalArgumentException("superState must not be null"); 
    if (paramParcelable == EMPTY_STATE)
      paramParcelable = null; 
    this.mSuperState = paramParcelable;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public final Parcelable getSuperState() {
    return this.mSuperState;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeParcelable(this.mSuperState, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\AbsSavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */