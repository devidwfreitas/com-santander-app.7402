package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class RecyclerView$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<RecyclerView$SavedState> CREATOR = ParcelableCompat.newCreator(new RecyclerView$SavedState$1());
  
  Parcelable mLayoutState;
  
  RecyclerView$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    if (paramClassLoader == null)
      paramClassLoader = RecyclerView$LayoutManager.class.getClassLoader(); 
    this.mLayoutState = paramParcel.readParcelable(paramClassLoader);
  }
  
  RecyclerView$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  void copyFrom(RecyclerView$SavedState paramRecyclerView$SavedState) {
    this.mLayoutState = paramRecyclerView$SavedState.mLayoutState;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(this.mLayoutState, 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */