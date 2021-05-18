import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cyj extends Binder implements cyi {
  public static cyi a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
    return (iInterface != null && iInterface instanceof cyi) ? (cyi)iInterface : new cyk(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.dynamite.IDynamiteLoaderV2");
        return true;
      case 1:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
    cwx cwx = a(cwy.a(paramParcel1.readStrongBinder()), paramParcel1.readString(), paramParcel1.createByteArray());
    paramParcel2.writeNoException();
    if (cwx != null) {
      IBinder iBinder = cwx.asBinder();
      paramParcel2.writeStrongBinder(iBinder);
      return true;
    } 
    cwx = null;
    paramParcel2.writeStrongBinder((IBinder)cwx);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cyj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */