package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;

public class ViewPager$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<ViewPager$SavedState> CREATOR = ParcelableCompat.newCreator(new ViewPager$SavedState$1());
  
  Parcelable adapterState;
  
  ClassLoader loader;
  
  int position;
  
  ViewPager$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    ClassLoader classLoader = paramClassLoader;
    if (paramClassLoader == null)
      classLoader = getClass().getClassLoader(); 
    this.position = paramParcel.readInt();
    this.adapterState = paramParcel.readParcelable(classLoader);
    this.loader = classLoader;
  }
  
  public ViewPager$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public String toString() {
    return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.position);
    paramParcel.writeParcelable(this.adapterState, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPager$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */