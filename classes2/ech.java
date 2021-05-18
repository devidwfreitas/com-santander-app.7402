import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;

class ech implements ecf {
  private IBinder a;
  
  ech(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(Location paramLocation) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnLocationChangeListener");
      if (paramLocation != null) {
        parcel1.writeInt(1);
        paramLocation.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(cwx paramcwx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnLocationChangeListener");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ech.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */