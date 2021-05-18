package android.support.v7.app;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;

class AppCompatDelegateImplV9$PanelFeatureState$SavedState implements Parcelable {
  public static final Parcelable.Creator<AppCompatDelegateImplV9$PanelFeatureState$SavedState> CREATOR = ParcelableCompat.newCreator(new AppCompatDelegateImplV9$PanelFeatureState$SavedState$1());
  
  int featureId;
  
  boolean isOpen;
  
  Bundle menuState;
  
  static AppCompatDelegateImplV9$PanelFeatureState$SavedState readFromParcel(Parcel paramParcel, ClassLoader paramClassLoader) {
    boolean bool = true;
    AppCompatDelegateImplV9$PanelFeatureState$SavedState appCompatDelegateImplV9$PanelFeatureState$SavedState = new AppCompatDelegateImplV9$PanelFeatureState$SavedState();
    appCompatDelegateImplV9$PanelFeatureState$SavedState.featureId = paramParcel.readInt();
    if (paramParcel.readInt() != 1)
      bool = false; 
    appCompatDelegateImplV9$PanelFeatureState$SavedState.isOpen = bool;
    if (appCompatDelegateImplV9$PanelFeatureState$SavedState.isOpen)
      appCompatDelegateImplV9$PanelFeatureState$SavedState.menuState = paramParcel.readBundle(paramClassLoader); 
    return appCompatDelegateImplV9$PanelFeatureState$SavedState;
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.featureId);
    if (this.isOpen) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
    if (this.isOpen)
      paramParcel.writeBundle(this.menuState); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV9$PanelFeatureState$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */