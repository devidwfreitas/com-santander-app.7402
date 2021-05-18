import android.os.IBinder;
import android.os.Parcel;

class ebs implements ebq {
  private IBinder a;
  
  ebs(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(eep parameep) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnGroundOverlayClickListener");
      if (parameep != null) {
        IBinder iBinder = parameep.asBinder();
      } else {
        parameep = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameep);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ebs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */