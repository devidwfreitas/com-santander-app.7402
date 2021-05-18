import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;

public abstract class dzb extends Binder implements dza {
  public static dza a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
    return (iInterface != null && iInterface instanceof dza) ? (dza)iInterface : new dzc(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    LatLng latLng1;
    IBinder iBinder;
    cwx cwx;
    LatLng latLng2 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IProjectionDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
        latLng1 = a(cwy.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        if (latLng1 != null) {
          paramParcel2.writeInt(1);
          latLng1.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 2:
        latLng1.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
        if (latLng1.readInt() != 0) {
          latLng1 = (LatLng)LatLng.CREATOR.createFromParcel((Parcel)latLng1);
        } else {
          latLng1 = null;
        } 
        cwx = a(latLng1);
        paramParcel2.writeNoException();
        latLng1 = latLng2;
        if (cwx != null)
          iBinder = cwx.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder);
        return true;
      case 3:
        break;
    } 
    iBinder.enforceInterface("com.google.android.gms.maps.internal.IProjectionDelegate");
    VisibleRegion visibleRegion = a();
    paramParcel2.writeNoException();
    if (visibleRegion != null) {
      paramParcel2.writeInt(1);
      visibleRegion.writeToParcel(paramParcel2, 1);
      return true;
    } 
    paramParcel2.writeInt(0);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dzb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */