import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class eff extends Binder implements efe {
  public static efe a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
    return (iInterface != null && iInterface instanceof efe) ? (efe)iInterface : new efg(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    String str;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool4 = false;
    boolean bool3 = false;
    boolean bool = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        a();
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        b();
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        str = c();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str);
        return true;
      case 4:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        a(str.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 5:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        f = d();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 6:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        if (str.readInt() != 0)
          bool = true; 
        a(bool);
        paramParcel2.writeNoException();
        return true;
      case 7:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        bool = e();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 8:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        bool = a(a(str.readStrongBinder()));
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 9:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        paramInt1 = f();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 10:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        bool = bool4;
        if (str.readInt() != 0)
          bool = true; 
        b(bool);
        paramParcel2.writeNoException();
        return true;
      case 11:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        bool = g();
        paramParcel2.writeNoException();
        paramInt1 = bool3;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 12:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
        b(str.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 13:
        break;
    } 
    str.enforceInterface("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
    float f = h();
    paramParcel2.writeNoException();
    paramParcel2.writeFloat(f);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eff.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */