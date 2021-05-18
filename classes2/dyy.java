import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class dyy extends Binder implements dyx {
  public static dyx a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
    return (iInterface != null && iInterface instanceof dyx) ? (dyx)iInterface : new dyz(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    IBinder iBinder2;
    dyo dyo1;
    IBinder iBinder1;
    Bundle bundle2;
    cwx cwx1;
    Bundle bundle1;
    Parcel parcel2 = null;
    Bundle bundle3 = null;
    dyo dyo2 = null;
    cwx cwx2 = null;
    Parcel parcel1 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IMapViewDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        dyo2 = a();
        paramParcel2.writeNoException();
        paramParcel1 = parcel1;
        if (dyo2 != null)
          iBinder2 = dyo2.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 2:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        parcel1 = parcel2;
        if (iBinder2.readInt() != 0)
          bundle2 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)iBinder2); 
        a(bundle2);
        paramParcel2.writeNoException();
        return true;
      case 3:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        b();
        paramParcel2.writeNoException();
        return true;
      case 4:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        c();
        paramParcel2.writeNoException();
        return true;
      case 5:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        d();
        paramParcel2.writeNoException();
        return true;
      case 6:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        e();
        paramParcel2.writeNoException();
        return true;
      case 7:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        bundle2 = bundle3;
        if (iBinder2.readInt() != 0)
          bundle2 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)iBinder2); 
        b(bundle2);
        paramParcel2.writeNoException();
        if (bundle2 != null) {
          paramParcel2.writeInt(1);
          bundle2.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 8:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        cwx1 = f();
        paramParcel2.writeNoException();
        dyo1 = dyo2;
        if (cwx1 != null)
          iBinder1 = cwx1.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 9:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        a(ecs.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 10:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        cwx1 = cwx2;
        if (iBinder1.readInt() != 0)
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)iBinder1); 
        c(bundle1);
        paramParcel2.writeNoException();
        return true;
      case 11:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        g();
        paramParcel2.writeNoException();
        return true;
      case 12:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
        h();
        paramParcel2.writeNoException();
        return true;
      case 13:
        break;
    } 
    iBinder1.enforceInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
    i();
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dyy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */