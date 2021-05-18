package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;

public class Toolbar$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<Toolbar$SavedState> CREATOR = ParcelableCompat.newCreator(new Toolbar$SavedState$1());
  
  int expandedMenuItemId;
  
  boolean isOverflowOpen;
  
  public Toolbar$SavedState(Parcel paramParcel) {
    this(paramParcel, null);
  }
  
  public Toolbar$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    boolean bool;
    this.expandedMenuItemId = paramParcel.readInt();
    if (paramParcel.readInt() != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.isOverflowOpen = bool;
  }
  
  public Toolbar$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.expandedMenuItemId);
    if (this.isOverflowOpen) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\Toolbar$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */