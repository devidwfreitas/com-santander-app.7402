package android.support.v4.os;

import android.os.Build;
import android.os.Parcelable;

public final class ParcelableCompat {
  public static <T> Parcelable.Creator<T> newCreator(ParcelableCompatCreatorCallbacks<T> paramParcelableCompatCreatorCallbacks) {
    return (Build.VERSION.SDK_INT >= 13) ? ParcelableCompatCreatorHoneycombMR2Stub.instantiate(paramParcelableCompatCreatorCallbacks) : new ParcelableCompat$CompatCreator<T>(paramParcelableCompatCreatorCallbacks);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\os\ParcelableCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */