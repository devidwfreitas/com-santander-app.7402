package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;

class ActionMenuPresenter$SavedState implements Parcelable {
  public static final Parcelable.Creator<ActionMenuPresenter$SavedState> CREATOR = new ActionMenuPresenter$SavedState$1();
  
  public int openSubMenuId;
  
  ActionMenuPresenter$SavedState() {}
  
  ActionMenuPresenter$SavedState(Parcel paramParcel) {
    this.openSubMenuId = paramParcel.readInt();
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.openSubMenuId);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActionMenuPresenter$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */