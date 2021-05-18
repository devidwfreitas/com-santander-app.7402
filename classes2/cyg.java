import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cyg extends Binder implements cyf {
  public static cyf a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
    return (iInterface != null && iInterface instanceof cyf) ? (cyf)iInterface : new cyh(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    cwx cwx1;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.dynamite.IDynamiteLoader");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.dynamite.IDynamiteLoader");
        paramInt1 = a(cwy.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.dynamite.IDynamiteLoader");
        cwx1 = a(cwy.a(paramParcel1.readStrongBinder()), paramParcel1.readString(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        if (cwx1 != null) {
          IBinder iBinder = cwx1.asBinder();
          paramParcel2.writeStrongBinder(iBinder);
          return true;
        } 
        cwx1 = null;
        paramParcel2.writeStrongBinder((IBinder)cwx1);
        return true;
      case 3:
        break;
    } 
    cwx1.enforceInterface("com.google.android.gms.dynamite.IDynamiteLoader");
    cwx cwx2 = cwy.a(cwx1.readStrongBinder());
    String str = cwx1.readString();
    if (cwx1.readInt() != 0) {
      boolean bool1 = true;
      paramInt1 = a(cwx2, str, bool1);
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      return true;
    } 
    boolean bool = false;
    paramInt1 = a(cwx2, str, bool);
    paramParcel2.writeNoException();
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cyg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */