import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public abstract class eeq extends Binder implements eep {
  public static eep a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
    return (iInterface != null && iInterface instanceof eep) ? (eep)iInterface : new eer(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    String str;
    LatLng latLng1;
    IBinder iBinder;
    float f;
    LatLngBounds latLngBounds2;
    LatLng latLng4 = null;
    LatLng latLng2 = null;
    LatLng latLng3 = null;
    boolean bool2 = false;
    boolean bool = false;
    boolean bool3 = false;
    boolean bool1 = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        a();
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        str = b();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str);
        return true;
      case 3:
        str.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        latLng2 = latLng3;
        if (str.readInt() != 0)
          latLng2 = (LatLng)LatLng.CREATOR.createFromParcel((Parcel)str); 
        a(latLng2);
        paramParcel2.writeNoException();
        return true;
      case 4:
        str.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        latLng1 = c();
        paramParcel2.writeNoException();
        if (latLng1 != null) {
          paramParcel2.writeInt(1);
          latLng1.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 5:
        latLng1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        a(latLng1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 6:
        latLng1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        a(latLng1.readFloat(), latLng1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 7:
        latLng1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        f = d();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 8:
        latLng1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        f = e();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 9:
        latLng1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        latLng2 = latLng4;
        if (latLng1.readInt() != 0)
          latLngBounds2 = (LatLngBounds)LatLngBounds.CREATOR.createFromParcel((Parcel)latLng1); 
        a(latLngBounds2);
        paramParcel2.writeNoException();
        return true;
      case 10:
        latLng1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        latLngBounds1 = f();
        paramParcel2.writeNoException();
        if (latLngBounds1 != null) {
          paramParcel2.writeInt(1);
          latLngBounds1.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 11:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        b(latLngBounds1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 12:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        f = g();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 13:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        c(latLngBounds1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 14:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        f = h();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 15:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        if (latLngBounds1.readInt() != 0) {
          bool = true;
          a(bool);
          paramParcel2.writeNoException();
          return true;
        } 
        bool = false;
        a(bool);
        paramParcel2.writeNoException();
        return true;
      case 16:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        bool = i();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 17:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        d(latLngBounds1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 18:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        f = j();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 19:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        bool = a(a(latLngBounds1.readStrongBinder()));
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 20:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        paramInt1 = k();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 21:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        a(cwy.a(latLngBounds1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 22:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        if (latLngBounds1.readInt() != 0)
          bool = true; 
        b(bool);
        paramParcel2.writeNoException();
        return true;
      case 23:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        bool = l();
        paramParcel2.writeNoException();
        paramInt1 = bool3;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 24:
        latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
        b(cwy.a(latLngBounds1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 25:
        break;
    } 
    latLngBounds1.enforceInterface("com.google.android.gms.maps.model.internal.IGroundOverlayDelegate");
    cwx cwx = m();
    paramParcel2.writeNoException();
    LatLngBounds latLngBounds1 = latLngBounds2;
    if (cwx != null)
      iBinder = cwx.asBinder(); 
    paramParcel2.writeStrongBinder(iBinder);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eeq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */