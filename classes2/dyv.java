import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.GoogleMapOptions;

public abstract class dyv extends Binder implements dyu {
  public static dyu a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
    return (iInterface != null && iInterface instanceof dyu) ? (dyu)iInterface : new dyw(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    dyo dyo;
    GoogleMapOptions googleMapOptions1;
    IBinder iBinder;
    boolean bool;
    cwx cwx1;
    cwx cwx2;
    GoogleMapOptions googleMapOptions2 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        dyo = a();
        paramParcel2.writeNoException();
        if (dyo != null) {
          iBinder = dyo.asBinder();
          paramParcel2.writeStrongBinder(iBinder);
          return true;
        } 
        dyo = null;
        paramParcel2.writeStrongBinder((IBinder)dyo);
        return true;
      case 2:
        dyo.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        cwx1 = cwy.a(dyo.readStrongBinder());
        if (dyo.readInt() != 0) {
          googleMapOptions2 = (GoogleMapOptions)GoogleMapOptions.CREATOR.createFromParcel((Parcel)dyo);
        } else {
          googleMapOptions2 = null;
        } 
        if (dyo.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)dyo);
          a(cwx1, googleMapOptions2, bundle);
          paramParcel2.writeNoException();
          return true;
        } 
        dyo = null;
        a(cwx1, googleMapOptions2, (Bundle)dyo);
        paramParcel2.writeNoException();
        return true;
      case 3:
        dyo.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        if (dyo.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)dyo);
          a(bundle);
          paramParcel2.writeNoException();
          return true;
        } 
        dyo = null;
        a((Bundle)dyo);
        paramParcel2.writeNoException();
        return true;
      case 4:
        dyo.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        cwx1 = cwy.a(dyo.readStrongBinder());
        cwx2 = cwy.a(dyo.readStrongBinder());
        if (dyo.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)dyo);
        } else {
          dyo = null;
        } 
        cwx1 = a(cwx1, cwx2, (Bundle)dyo);
        paramParcel2.writeNoException();
        googleMapOptions1 = googleMapOptions2;
        if (cwx1 != null)
          iBinder = cwx1.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder);
        return true;
      case 5:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        b();
        paramParcel2.writeNoException();
        return true;
      case 6:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        c();
        paramParcel2.writeNoException();
        return true;
      case 7:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        d();
        paramParcel2.writeNoException();
        return true;
      case 8:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        e();
        paramParcel2.writeNoException();
        return true;
      case 9:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        f();
        paramParcel2.writeNoException();
        return true;
      case 10:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        if (iBinder.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)iBinder);
        } else {
          iBinder = null;
        } 
        b((Bundle)iBinder);
        paramParcel2.writeNoException();
        if (iBinder != null) {
          paramParcel2.writeInt(1);
          iBinder.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 11:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        bool = g();
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
          paramParcel2.writeInt(paramInt1);
          return true;
        } 
        paramInt1 = 0;
        paramParcel2.writeInt(paramInt1);
        return true;
      case 12:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        a(ecs.a(iBinder.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 13:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        if (iBinder.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)iBinder);
          c(bundle);
          paramParcel2.writeNoException();
          return true;
        } 
        iBinder = null;
        c((Bundle)iBinder);
        paramParcel2.writeNoException();
        return true;
      case 14:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        h();
        paramParcel2.writeNoException();
        return true;
      case 15:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
        i();
        paramParcel2.writeNoException();
        return true;
      case 16:
        break;
    } 
    iBinder.enforceInterface("com.google.android.gms.maps.internal.IMapFragmentDelegate");
    j();
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dyv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */