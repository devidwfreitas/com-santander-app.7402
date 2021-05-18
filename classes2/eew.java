import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class eew extends Binder implements eev {
  public static eev a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
    return (iInterface != null && iInterface instanceof eev) ? (eev)iInterface : new eex(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    String str;
    boolean bool;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
        str = a();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str);
        return true;
      case 2:
        str.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
        str = b();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str);
        return true;
      case 3:
        str.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
        c();
        paramParcel2.writeNoException();
        return true;
      case 4:
        str.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
        bool = a(a(str.readStrongBinder()));
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
          paramParcel2.writeInt(paramInt1);
          return true;
        } 
        paramInt1 = 0;
        paramParcel2.writeInt(paramInt1);
        return true;
      case 5:
        break;
    } 
    str.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorLevelDelegate");
    paramInt1 = d();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eew.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */