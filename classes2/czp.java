import android.os.IBinder;
import android.os.Parcel;

class czp implements czn {
  private IBinder a;
  
  czp(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.gcm.INetworkTaskCallback");
      parcel1.writeInt(paramInt);
      this.a.transact(2, parcel1, parcel2, 0);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\czp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */