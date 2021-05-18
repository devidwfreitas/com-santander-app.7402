import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cng extends Binder implements cnf {
  public static cnf a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    return (iInterface != null && iInterface instanceof cnf) ? (cnf)iInterface : new cnh(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    String str1;
    boolean bool1 = false;
    boolean bool = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        str1 = a();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str1);
        return true;
      case 2:
        str1.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        if (str1.readInt() != 0) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        bool1 = a(bool1);
        paramParcel2.writeNoException();
        paramInt1 = bool;
        if (bool1)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 3:
        str1.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        str1 = a(str1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeString(str1);
        return true;
      case 4:
        break;
    } 
    str1.enforceInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
    String str2 = str1.readString();
    if (str1.readInt() != 0)
      bool1 = true; 
    a(str2, bool1);
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cng.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */