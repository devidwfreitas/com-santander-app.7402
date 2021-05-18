package android.support.design.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.view.AbsSavedState;
import android.text.TextUtils;

class TextInputLayout$SavedState extends AbsSavedState {
  public static final Parcelable.Creator<TextInputLayout$SavedState> CREATOR = ParcelableCompat.newCreator(new TextInputLayout$SavedState$1());
  
  CharSequence error;
  
  TextInputLayout$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
    super(paramParcel, paramClassLoader);
    this.error = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel);
  }
  
  TextInputLayout$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public String toString() {
    return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + this.error + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    TextUtils.writeToParcel(this.error, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TextInputLayout$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */