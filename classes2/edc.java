import android.os.IBinder;
import android.os.Parcel;

class edc implements eda {
  private IBinder a;
  
  edc(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public boolean a() {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMyLocationButtonClickListener");
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i == 0)
        bool = false; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */