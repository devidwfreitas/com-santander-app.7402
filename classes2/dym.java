import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public abstract class dym extends Binder implements dyl {
  public static dyl a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
    return (iInterface != null && iInterface instanceof dyl) ? (dyl)iInterface : new dyn(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    cwx cwx3;
    IBinder iBinder3;
    cwx cwx2;
    IBinder iBinder2;
    cwx cwx1;
    IBinder iBinder7 = null;
    IBinder iBinder8 = null;
    IBinder iBinder9 = null;
    IBinder iBinder10 = null;
    cwx cwx4 = null;
    cwx cwx5 = null;
    IBinder iBinder4 = null;
    IBinder iBinder5 = null;
    IBinder iBinder6 = null;
    cwx cwx6 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        cwx3 = a();
        paramParcel2.writeNoException();
        if (cwx3 != null) {
          iBinder3 = cwx3.asBinder();
          paramParcel2.writeStrongBinder(iBinder3);
          return true;
        } 
        cwx3 = null;
        paramParcel2.writeStrongBinder((IBinder)cwx3);
        return true;
      case 2:
        cwx3.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        cwx4 = b();
        paramParcel2.writeNoException();
        cwx3 = cwx6;
        if (cwx4 != null)
          iBinder3 = cwx4.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder3);
        return true;
      case 3:
        iBinder3.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        cwx4 = a(iBinder3.readFloat(), iBinder3.readFloat());
        paramParcel2.writeNoException();
        iBinder3 = iBinder7;
        if (cwx4 != null)
          iBinder3 = cwx4.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder3);
        return true;
      case 4:
        iBinder3.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        cwx4 = a(iBinder3.readFloat());
        paramParcel2.writeNoException();
        iBinder3 = iBinder8;
        if (cwx4 != null)
          iBinder3 = cwx4.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder3);
        return true;
      case 5:
        iBinder3.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        cwx4 = b(iBinder3.readFloat());
        paramParcel2.writeNoException();
        iBinder3 = iBinder9;
        if (cwx4 != null)
          iBinder3 = cwx4.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder3);
        return true;
      case 6:
        iBinder3.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        cwx4 = a(iBinder3.readFloat(), iBinder3.readInt(), iBinder3.readInt());
        paramParcel2.writeNoException();
        iBinder3 = iBinder10;
        if (cwx4 != null)
          iBinder3 = cwx4.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder3);
        return true;
      case 7:
        iBinder3.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        if (iBinder3.readInt() != 0) {
          CameraPosition cameraPosition = (CameraPosition)CameraPosition.CREATOR.createFromParcel((Parcel)iBinder3);
        } else {
          iBinder3 = null;
        } 
        cwx5 = a((CameraPosition)iBinder3);
        paramParcel2.writeNoException();
        cwx2 = cwx4;
        if (cwx5 != null)
          iBinder2 = cwx5.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 8:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        if (iBinder2.readInt() != 0) {
          LatLng latLng = (LatLng)LatLng.CREATOR.createFromParcel((Parcel)iBinder2);
        } else {
          iBinder2 = null;
        } 
        cwx4 = a((LatLng)iBinder2);
        paramParcel2.writeNoException();
        cwx1 = cwx5;
        if (cwx4 != null)
          iBinder1 = cwx4.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 9:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        if (iBinder1.readInt() != 0) {
          LatLng latLng = (LatLng)LatLng.CREATOR.createFromParcel((Parcel)iBinder1);
        } else {
          cwx4 = null;
        } 
        cwx4 = a((LatLng)cwx4, iBinder1.readFloat());
        paramParcel2.writeNoException();
        iBinder1 = iBinder4;
        if (cwx4 != null)
          iBinder1 = cwx4.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 10:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
        if (iBinder1.readInt() != 0) {
          LatLngBounds latLngBounds = (LatLngBounds)LatLngBounds.CREATOR.createFromParcel((Parcel)iBinder1);
        } else {
          cwx4 = null;
        } 
        cwx4 = a((LatLngBounds)cwx4, iBinder1.readInt());
        paramParcel2.writeNoException();
        iBinder1 = iBinder5;
        if (cwx4 != null)
          iBinder1 = cwx4.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 11:
        break;
    } 
    iBinder1.enforceInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
    if (iBinder1.readInt() != 0) {
      LatLngBounds latLngBounds = (LatLngBounds)LatLngBounds.CREATOR.createFromParcel((Parcel)iBinder1);
    } else {
      cwx4 = null;
    } 
    cwx4 = a((LatLngBounds)cwx4, iBinder1.readInt(), iBinder1.readInt(), iBinder1.readInt());
    paramParcel2.writeNoException();
    IBinder iBinder1 = iBinder6;
    if (cwx4 != null)
      iBinder1 = cwx4.asBinder(); 
    paramParcel2.writeStrongBinder(iBinder1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dym.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */