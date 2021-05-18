import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class dhm extends Binder implements dhl {
  public dhm() {
    attachInterface(this, "com.google.android.gms.flags.IFlagProvider");
  }
  
  public static dhl asInterface(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.flags.IFlagProvider");
    return (iInterface != null && iInterface instanceof dhl) ? (dhl)iInterface : new dhn(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    boolean bool1;
    long l;
    String str2;
    boolean bool = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.flags.IFlagProvider");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.flags.IFlagProvider");
        init(cwy.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.flags.IFlagProvider");
        str2 = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        bool1 = getBooleanFlagValue(str2, bool1, paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramInt1 = bool;
        if (bool1)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.android.gms.flags.IFlagProvider");
        paramInt1 = getIntFlagValue(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.android.gms.flags.IFlagProvider");
        l = getLongFlagValue(paramParcel1.readString(), paramParcel1.readLong(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        paramParcel2.writeLong(l);
        return true;
      case 5:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.flags.IFlagProvider");
    String str1 = getStringFlagValue(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readInt());
    paramParcel2.writeNoException();
    paramParcel2.writeString(str1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dhm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */