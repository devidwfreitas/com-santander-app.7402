import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class cun extends Binder implements cum {
  public cun() {
    attachInterface(this, "com.google.android.gms.common.internal.ICertData");
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    cwx cwx;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.common.internal.ICertData");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.common.internal.ICertData");
        cwx = a();
        paramParcel2.writeNoException();
        if (cwx != null) {
          IBinder iBinder = cwx.asBinder();
          paramParcel2.writeStrongBinder(iBinder);
          return true;
        } 
        cwx = null;
        paramParcel2.writeStrongBinder((IBinder)cwx);
        return true;
      case 2:
        break;
    } 
    cwx.enforceInterface("com.google.android.gms.common.internal.ICertData");
    paramInt1 = b();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cun.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */