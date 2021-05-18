import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public abstract class dze extends Binder implements dzd {
  public static dzd a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
    return (iInterface != null && iInterface instanceof dzd) ? (dzd)iInterface : new dzf(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    StreetViewPanoramaCamera streetViewPanoramaCamera2;
    StreetViewPanoramaLocation streetViewPanoramaLocation;
    StreetViewPanoramaOrientation streetViewPanoramaOrientation;
    StreetViewPanoramaCamera streetViewPanoramaCamera1;
    IBinder iBinder;
    cwx cwx;
    StreetViewPanoramaCamera streetViewPanoramaCamera3 = null;
    boolean bool6 = false;
    boolean bool7 = false;
    boolean bool8 = false;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        if (paramParcel1.readInt() != 0)
          bool5 = true; 
        a(bool5);
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        bool5 = bool6;
        if (paramParcel1.readInt() != 0)
          bool5 = true; 
        b(bool5);
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        bool5 = bool7;
        if (paramParcel1.readInt() != 0)
          bool5 = true; 
        c(bool5);
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        bool5 = bool8;
        if (paramParcel1.readInt() != 0)
          bool5 = true; 
        d(bool5);
        paramParcel2.writeNoException();
        return true;
      case 5:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        bool5 = a();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool5)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 6:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        bool5 = b();
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool5)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 7:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        bool5 = c();
        paramParcel2.writeNoException();
        paramInt1 = bool3;
        if (bool5)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 8:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        bool5 = d();
        paramParcel2.writeNoException();
        paramInt1 = bool4;
        if (bool5)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 9:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        if (paramParcel1.readInt() != 0) {
          streetViewPanoramaCamera3 = (StreetViewPanoramaCamera)StreetViewPanoramaCamera.CREATOR.createFromParcel(paramParcel1);
          a(streetViewPanoramaCamera3, paramParcel1.readLong());
          paramParcel2.writeNoException();
          return true;
        } 
        streetViewPanoramaCamera3 = null;
        a(streetViewPanoramaCamera3, paramParcel1.readLong());
        paramParcel2.writeNoException();
        return true;
      case 10:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        streetViewPanoramaCamera2 = e();
        paramParcel2.writeNoException();
        if (streetViewPanoramaCamera2 != null) {
          paramParcel2.writeInt(1);
          streetViewPanoramaCamera2.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 11:
        streetViewPanoramaCamera2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        a(streetViewPanoramaCamera2.readString());
        paramParcel2.writeNoException();
        return true;
      case 12:
        streetViewPanoramaCamera2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        if (streetViewPanoramaCamera2.readInt() != 0) {
          LatLng latLng = (LatLng)LatLng.CREATOR.createFromParcel((Parcel)streetViewPanoramaCamera2);
          a(latLng);
          paramParcel2.writeNoException();
          return true;
        } 
        streetViewPanoramaCamera2 = null;
        a((LatLng)streetViewPanoramaCamera2);
        paramParcel2.writeNoException();
        return true;
      case 13:
        streetViewPanoramaCamera2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        if (streetViewPanoramaCamera2.readInt() != 0) {
          LatLng latLng = (LatLng)LatLng.CREATOR.createFromParcel((Parcel)streetViewPanoramaCamera2);
          a(latLng, streetViewPanoramaCamera2.readInt());
          paramParcel2.writeNoException();
          return true;
        } 
        streetViewPanoramaCamera3 = null;
        a((LatLng)streetViewPanoramaCamera3, streetViewPanoramaCamera2.readInt());
        paramParcel2.writeNoException();
        return true;
      case 14:
        streetViewPanoramaCamera2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        streetViewPanoramaLocation = f();
        paramParcel2.writeNoException();
        if (streetViewPanoramaLocation != null) {
          paramParcel2.writeInt(1);
          streetViewPanoramaLocation.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 15:
        streetViewPanoramaLocation.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        a(dzz.a(streetViewPanoramaLocation.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 16:
        streetViewPanoramaLocation.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        a(dzw.a(streetViewPanoramaLocation.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 17:
        streetViewPanoramaLocation.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        a(eac.a(streetViewPanoramaLocation.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 18:
        streetViewPanoramaLocation.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        streetViewPanoramaOrientation = a(cwy.a(streetViewPanoramaLocation.readStrongBinder()));
        paramParcel2.writeNoException();
        if (streetViewPanoramaOrientation != null) {
          paramParcel2.writeInt(1);
          streetViewPanoramaOrientation.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 19:
        streetViewPanoramaOrientation.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
        if (streetViewPanoramaOrientation.readInt() != 0) {
          streetViewPanoramaOrientation = (StreetViewPanoramaOrientation)StreetViewPanoramaOrientation.CREATOR.createFromParcel((Parcel)streetViewPanoramaOrientation);
        } else {
          streetViewPanoramaOrientation = null;
        } 
        cwx = a(streetViewPanoramaOrientation);
        paramParcel2.writeNoException();
        streetViewPanoramaCamera1 = streetViewPanoramaCamera3;
        if (cwx != null)
          iBinder = cwx.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder);
        return true;
      case 20:
        break;
    } 
    iBinder.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
    a(eaf.a(iBinder.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dze.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */