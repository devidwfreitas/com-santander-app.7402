import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzah;

public abstract class cvb extends Binder implements cva {
  public static cva a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
    return (iInterface != null && iInterface instanceof cva) ? (cva)iInterface : new cvc(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    IBinder iBinder;
    cwx cwx2 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.common.internal.ISignInButtonCreator");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        cwx1 = a(cwy.a(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        if (cwx1 != null) {
          iBinder = cwx1.asBinder();
          paramParcel2.writeStrongBinder(iBinder);
          return true;
        } 
        cwx1 = null;
        paramParcel2.writeStrongBinder((IBinder)cwx1);
        return true;
      case 2:
        break;
    } 
    cwx1.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
    cwx cwx3 = cwy.a(cwx1.readStrongBinder());
    if (cwx1.readInt() != 0) {
      zzah zzah = (zzah)zzah.CREATOR.createFromParcel((Parcel)cwx1);
    } else {
      cwx1 = null;
    } 
    cwx3 = a(cwx3, (zzah)cwx1);
    paramParcel2.writeNoException();
    cwx cwx1 = cwx2;
    if (cwx3 != null)
      iBinder = cwx3.asBinder(); 
    paramParcel2.writeStrongBinder(iBinder);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */