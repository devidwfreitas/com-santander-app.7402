import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class dzn extends Binder implements dzm {
  public static dzm a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
    return (iInterface != null && iInterface instanceof dzm) ? (dzm)iInterface : new dzo(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    boolean bool11 = false;
    boolean bool12 = false;
    boolean bool13 = false;
    boolean bool14 = false;
    boolean bool15 = false;
    boolean bool16 = false;
    boolean bool17 = false;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool6 = false;
    boolean bool7 = false;
    boolean bool18 = false;
    boolean bool8 = false;
    boolean bool19 = false;
    boolean bool9 = false;
    boolean bool10 = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        if (paramParcel1.readInt() != 0)
          bool10 = true; 
        a(bool10);
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = bool11;
        if (paramParcel1.readInt() != 0)
          bool10 = true; 
        b(bool10);
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = bool12;
        if (paramParcel1.readInt() != 0)
          bool10 = true; 
        c(bool10);
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = bool13;
        if (paramParcel1.readInt() != 0)
          bool10 = true; 
        d(bool10);
        paramParcel2.writeNoException();
        return true;
      case 5:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = bool14;
        if (paramParcel1.readInt() != 0)
          bool10 = true; 
        e(bool10);
        paramParcel2.writeNoException();
        return true;
      case 6:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = bool15;
        if (paramParcel1.readInt() != 0)
          bool10 = true; 
        f(bool10);
        paramParcel2.writeNoException();
        return true;
      case 7:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = bool16;
        if (paramParcel1.readInt() != 0)
          bool10 = true; 
        g(bool10);
        paramParcel2.writeNoException();
        return true;
      case 8:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = bool17;
        if (paramParcel1.readInt() != 0)
          bool10 = true; 
        h(bool10);
        paramParcel2.writeNoException();
        return true;
      case 9:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = a();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool10)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 10:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = b();
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool10)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 11:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = c();
        paramParcel2.writeNoException();
        paramInt1 = bool3;
        if (bool10)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 12:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = d();
        paramParcel2.writeNoException();
        paramInt1 = bool4;
        if (bool10)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 13:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = e();
        paramParcel2.writeNoException();
        paramInt1 = bool5;
        if (bool10)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 14:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = f();
        paramParcel2.writeNoException();
        paramInt1 = bool6;
        if (bool10)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 15:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = g();
        paramParcel2.writeNoException();
        paramInt1 = bool7;
        if (bool10)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 16:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = bool18;
        if (paramParcel1.readInt() != 0)
          bool10 = true; 
        i(bool10);
        paramParcel2.writeNoException();
        return true;
      case 17:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = h();
        paramParcel2.writeNoException();
        paramInt1 = bool8;
        if (bool10)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 18:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
        bool10 = bool19;
        if (paramParcel1.readInt() != 0)
          bool10 = true; 
        j(bool10);
        paramParcel2.writeNoException();
        return true;
      case 19:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IUiSettingsDelegate");
    bool10 = i();
    paramParcel2.writeNoException();
    paramInt1 = bool9;
    if (bool10)
      paramInt1 = 1; 
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dzn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */