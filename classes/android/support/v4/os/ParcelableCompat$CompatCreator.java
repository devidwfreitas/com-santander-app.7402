package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable;

class ParcelableCompat$CompatCreator<T> implements Parcelable.Creator<T> {
  final ParcelableCompatCreatorCallbacks<T> mCallbacks;
  
  public ParcelableCompat$CompatCreator(ParcelableCompatCreatorCallbacks<T> paramParcelableCompatCreatorCallbacks) {
    this.mCallbacks = paramParcelableCompatCreatorCallbacks;
  }
  
  public T createFromParcel(Parcel paramParcel) {
    return this.mCallbacks.createFromParcel(paramParcel, null);
  }
  
  public T[] newArray(int paramInt) {
    return this.mCallbacks.newArray(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\os\ParcelableCompat$CompatCreator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */