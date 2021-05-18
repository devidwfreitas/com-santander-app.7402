package android.support.design.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;

public class AppBarLayout$Behavior$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<AppBarLayout$Behavior$SavedState> CREATOR = ParcelableCompat.newCreator(new AppBarLayout$Behavior$SavedState$1());
  
  boolean firstVisibleChildAtMinimumHeight;
  
  int firstVisibleChildIndex;
  
  float firstVisibleChildPercentageShown;
  
  public AppBarLayout$Behavior$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    boolean bool;
    this.firstVisibleChildIndex = paramParcel.readInt();
    this.firstVisibleChildPercentageShown = paramParcel.readFloat();
    if (paramParcel.readByte() != 0) {
      bool = true;
    } else {
      bool = false;
    } 
    this.firstVisibleChildAtMinimumHeight = bool;
  }
  
  public AppBarLayout$Behavior$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.firstVisibleChildIndex);
    paramParcel.writeFloat(this.firstVisibleChildPercentageShown);
    if (this.firstVisibleChildAtMinimumHeight) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeByte((byte)paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\AppBarLayout$Behavior$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */