import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

final class bmx implements IInterface {
  private static final int a = 1;
  
  private static final int b = 2;
  
  private IBinder c;
  
  bmx(IBinder paramIBinder) {
    this.c = paramIBinder;
  }
  
  public String a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      this.c.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readString();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.c;
  }
  
  public boolean b() {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      parcel1.writeInt(1);
      this.c.transact(2, parcel1, parcel2, 0);
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */