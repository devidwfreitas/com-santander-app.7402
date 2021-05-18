package android.support.design.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;
import android.util.SparseArray;

public class CoordinatorLayout$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<CoordinatorLayout$SavedState> CREATOR = ParcelableCompat.newCreator(new CoordinatorLayout$SavedState$1());
  
  SparseArray<Parcelable> behaviorStates;
  
  public CoordinatorLayout$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    int j = paramParcel.readInt();
    int[] arrayOfInt = new int[j];
    paramParcel.readIntArray(arrayOfInt);
    Parcelable[] arrayOfParcelable = paramParcel.readParcelableArray(paramClassLoader);
    this.behaviorStates = new SparseArray(j);
    for (int i = 0; i < j; i++)
      this.behaviorStates.append(arrayOfInt[i], arrayOfParcelable[i]); 
  }
  
  public CoordinatorLayout$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    byte b;
    int i = 0;
    super.writeToParcel(paramParcel, paramInt);
    if (this.behaviorStates != null) {
      b = this.behaviorStates.size();
    } else {
      b = 0;
    } 
    paramParcel.writeInt(b);
    int[] arrayOfInt = new int[b];
    Parcelable[] arrayOfParcelable = new Parcelable[b];
    while (i < b) {
      arrayOfInt[i] = this.behaviorStates.keyAt(i);
      arrayOfParcelable[i] = (Parcelable)this.behaviorStates.valueAt(i);
      i++;
    } 
    paramParcel.writeIntArray(arrayOfInt);
    paramParcel.writeParcelableArray(arrayOfParcelable, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\CoordinatorLayout$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */