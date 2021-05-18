import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class dzk extends Binder implements dzj {
  public static dzj a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
    return (iInterface != null && iInterface instanceof dzj) ? (dzj)iInterface : new dzl(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    IBinder iBinder2;
    dzd dzd1;
    IBinder iBinder1;
    Bundle bundle1;
    cwx cwx;
    Parcel parcel2 = null;
    Bundle bundle2 = null;
    dzd dzd2 = null;
    Parcel parcel1 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        dzd2 = a();
        paramParcel2.writeNoException();
        paramParcel1 = parcel1;
        if (dzd2 != null)
          iBinder2 = dzd2.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 2:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        parcel1 = parcel2;
        if (iBinder2.readInt() != 0)
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)iBinder2); 
        a(bundle1);
        paramParcel2.writeNoException();
        return true;
      case 3:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        b();
        paramParcel2.writeNoException();
        return true;
      case 4:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        c();
        paramParcel2.writeNoException();
        return true;
      case 5:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        d();
        paramParcel2.writeNoException();
        return true;
      case 6:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        e();
        paramParcel2.writeNoException();
        return true;
      case 7:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        bundle1 = bundle2;
        if (iBinder2.readInt() != 0)
          bundle1 = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)iBinder2); 
        b(bundle1);
        paramParcel2.writeNoException();
        if (bundle1 != null) {
          paramParcel2.writeInt(1);
          bundle1.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 8:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
        cwx = f();
        paramParcel2.writeNoException();
        dzd1 = dzd2;
        if (cwx != null)
          iBinder1 = cwx.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 9:
        break;
    } 
    iBinder1.enforceInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaViewDelegate");
    a(eai.a(iBinder1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dzk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */