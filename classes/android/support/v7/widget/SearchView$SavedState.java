package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;

class SearchView$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<SearchView$SavedState> CREATOR = ParcelableCompat.newCreator(new SearchView$SavedState$1());
  
  boolean isIconified;
  
  public SearchView$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    this.isIconified = ((Boolean)paramParcel.readValue(null)).booleanValue();
  }
  
  SearchView$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public String toString() {
    return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.isIconified + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeValue(Boolean.valueOf(this.isIconified));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */