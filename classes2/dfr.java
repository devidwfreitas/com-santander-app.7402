import android.os.IBinder;
import android.os.Parcel;

class dfr implements dfp {
  private IBinder a;
  
  dfr(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonCallbacks");
      parcel1.writeInt(paramInt);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dfr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */