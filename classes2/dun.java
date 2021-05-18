import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;

class dun implements dul {
  private IBinder a;
  
  dun(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(LocationAvailability paramLocationAvailability) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("com.google.android.gms.location.ILocationCallback");
      if (paramLocationAvailability != null) {
        parcel.writeInt(1);
        paramLocationAvailability.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.a.transact(2, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void a(LocationResult paramLocationResult) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("com.google.android.gms.location.ILocationCallback");
      if (paramLocationResult != null) {
        parcel.writeInt(1);
        paramLocationResult.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.a.transact(1, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dun.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */