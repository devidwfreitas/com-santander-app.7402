package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;

public class DrawerLayout$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<DrawerLayout$SavedState> CREATOR = ParcelableCompat.newCreator(new DrawerLayout$SavedState$1());
  
  int lockModeEnd;
  
  int lockModeLeft;
  
  int lockModeRight;
  
  int lockModeStart;
  
  int openDrawerGravity = 0;
  
  public DrawerLayout$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    this.openDrawerGravity = paramParcel.readInt();
    this.lockModeLeft = paramParcel.readInt();
    this.lockModeRight = paramParcel.readInt();
    this.lockModeStart = paramParcel.readInt();
    this.lockModeEnd = paramParcel.readInt();
  }
  
  public DrawerLayout$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.openDrawerGravity);
    paramParcel.writeInt(this.lockModeLeft);
    paramParcel.writeInt(this.lockModeRight);
    paramParcel.writeInt(this.lockModeStart);
    paramParcel.writeInt(this.lockModeEnd);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\DrawerLayout$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */