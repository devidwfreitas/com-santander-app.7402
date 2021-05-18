import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

public abstract class dzh extends Binder implements dzg {
  public static dzg a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
    return (iInterface != null && iInterface instanceof dzg) ? (dzg)iInterface : new dzi(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    dzd dzd;
    StreetViewPanoramaOptions streetViewPanoramaOptions1;
    IBinder iBinder;
    boolean bool;
    cwx cwx1;
    cwx cwx2;
    StreetViewPanoramaOptions streetViewPanoramaOptions2 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
        dzd = a();
        paramParcel2.writeNoException();
        if (dzd != null) {
          iBinder = dzd.asBinder();
          paramParcel2.writeStrongBinder(iBinder);
          return true;
        } 
        dzd = null;
        paramParcel2.writeStrongBinder((IBinder)dzd);
        return true;
      case 2:
        dzd.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
        cwx1 = cwy.a(dzd.readStrongBinder());
        if (dzd.readInt() != 0) {
          streetViewPanoramaOptions2 = (StreetViewPanoramaOptions)StreetViewPanoramaOptions.CREATOR.createFromParcel((Parcel)dzd);
        } else {
          streetViewPanoramaOptions2 = null;
        } 
        if (dzd.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)dzd);
          a(cwx1, streetViewPanoramaOptions2, bundle);
          paramParcel2.writeNoException();
          return true;
        } 
        dzd = null;
        a(cwx1, streetViewPanoramaOptions2, (Bundle)dzd);
        paramParcel2.writeNoException();
        return true;
      case 3:
        dzd.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
        if (dzd.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)dzd);
          a(bundle);
          paramParcel2.writeNoException();
          return true;
        } 
        dzd = null;
        a((Bundle)dzd);
        paramParcel2.writeNoException();
        return true;
      case 4:
        dzd.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
        cwx1 = cwy.a(dzd.readStrongBinder());
        cwx2 = cwy.a(dzd.readStrongBinder());
        if (dzd.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)dzd);
        } else {
          dzd = null;
        } 
        cwx1 = a(cwx1, cwx2, (Bundle)dzd);
        paramParcel2.writeNoException();
        streetViewPanoramaOptions1 = streetViewPanoramaOptions2;
        if (cwx1 != null)
          iBinder = cwx1.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder);
        return true;
      case 5:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
        b();
        paramParcel2.writeNoException();
        return true;
      case 6:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
        c();
        paramParcel2.writeNoException();
        return true;
      case 7:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
        d();
        paramParcel2.writeNoException();
        return true;
      case 8:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
        e();
        paramParcel2.writeNoException();
        return true;
      case 9:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
        f();
        paramParcel2.writeNoException();
        return true;
      case 10:
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
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
        iBinder.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
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
        break;
    } 
    iBinder.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaFragmentDelegate");
    a(eai.a(iBinder.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dzh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */