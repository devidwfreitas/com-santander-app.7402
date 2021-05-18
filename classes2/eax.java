import android.os.IBinder;
import android.os.Parcel;

class eax implements eav {
  private IBinder a;
  
  eax(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public cwx a(eey parameey) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      if (parameey != null) {
        IBinder iBinder = parameey.asBinder();
        parcel1.writeStrongBinder(iBinder);
        this.a.transact(1, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      parameey = null;
      parcel1.writeStrongBinder((IBinder)parameey);
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
  
  public cwx b(eey parameey) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IInfoWindowAdapter");
      if (parameey != null) {
        IBinder iBinder = parameey.asBinder();
        parcel1.writeStrongBinder(iBinder);
        this.a.transact(2, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      parameey = null;
      parcel1.writeStrongBinder((IBinder)parameey);
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */