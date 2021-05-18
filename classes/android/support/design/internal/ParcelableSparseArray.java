package android.support.design.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import android.support.v4.os.ParcelableCompat;
import android.util.SparseArray;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class ParcelableSparseArray extends SparseArray<Parcelable> implements Parcelable {
  public static final Parcelable.Creator<ParcelableSparseArray> CREATOR = ParcelableCompat.newCreator(new ParcelableSparseArray$1());
  
  public ParcelableSparseArray() {}
  
  public ParcelableSparseArray(Parcel paramParcel, ClassLoader paramClassLoader) {
    int j = paramParcel.readInt();
    int[] arrayOfInt = new int[j];
    paramParcel.readIntArray(arrayOfInt);
    Parcelable[] arrayOfParcelable = paramParcel.readParcelableArray(paramClassLoader);
    for (int i = 0; i < j; i++)
      put(arrayOfInt[i], arrayOfParcelable[i]); 
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    int j = size();
    int[] arrayOfInt = new int[j];
    Parcelable[] arrayOfParcelable = new Parcelable[j];
    for (int i = 0; i < j; i++) {
      arrayOfInt[i] = keyAt(i);
      arrayOfParcelable[i] = (Parcelable)valueAt(i);
    } 
    paramParcel.writeInt(j);
    paramParcel.writeIntArray(arrayOfInt);
    paramParcel.writeParcelableArray(arrayOfParcelable, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\internal\ParcelableSparseArray.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */