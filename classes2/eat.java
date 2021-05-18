import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.StreetViewPanoramaOptions;

public abstract class eat extends Binder implements eas {
  public static eas a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICreator");
    return (iInterface != null && iInterface instanceof eas) ? (eas)iInterface : new eau(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    dyu dyu1;
    IBinder iBinder2;
    dyx dyx1;
    dyl dyl;
    eej eej;
    cwx cwx1;
    dzj dzj;
    dyx dyx2;
    IBinder iBinder3 = null;
    IBinder iBinder4 = null;
    cwx cwx2 = null;
    IBinder iBinder5 = null;
    dyu dyu2 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.ICreator");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
        a(cwy.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
        dyu1 = b(cwy.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        if (dyu1 != null) {
          iBinder2 = dyu1.asBinder();
          paramParcel2.writeStrongBinder(iBinder2);
          return true;
        } 
        dyu1 = null;
        paramParcel2.writeStrongBinder((IBinder)dyu1);
        return true;
      case 3:
        dyu1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
        cwx2 = cwy.a(dyu1.readStrongBinder());
        if (dyu1.readInt() != 0) {
          GoogleMapOptions googleMapOptions = (GoogleMapOptions)GoogleMapOptions.CREATOR.createFromParcel((Parcel)dyu1);
        } else {
          dyu1 = null;
        } 
        dyx2 = a(cwx2, (GoogleMapOptions)dyu1);
        paramParcel2.writeNoException();
        dyu1 = dyu2;
        if (dyx2 != null)
          iBinder2 = dyx2.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 4:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.ICreator");
        dyl = a();
        paramParcel2.writeNoException();
        iBinder2 = iBinder3;
        if (dyl != null)
          iBinder2 = dyl.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 5:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.ICreator");
        eej = b();
        paramParcel2.writeNoException();
        iBinder2 = iBinder4;
        if (eej != null)
          iBinder2 = eej.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 6:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.ICreator");
        a(cwy.a(iBinder2.readStrongBinder()), iBinder2.readInt());
        paramParcel2.writeNoException();
        return true;
      case 7:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.ICreator");
        cwx1 = cwy.a(iBinder2.readStrongBinder());
        if (iBinder2.readInt() != 0) {
          StreetViewPanoramaOptions streetViewPanoramaOptions = (StreetViewPanoramaOptions)StreetViewPanoramaOptions.CREATOR.createFromParcel((Parcel)iBinder2);
        } else {
          iBinder2 = null;
        } 
        dzj = a(cwx1, (StreetViewPanoramaOptions)iBinder2);
        paramParcel2.writeNoException();
        dyx1 = dyx2;
        if (dzj != null)
          iBinder1 = dzj.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 8:
        break;
    } 
    iBinder1.enforceInterface("com.google.android.gms.maps.internal.ICreator");
    dzg dzg = c(cwy.a(iBinder1.readStrongBinder()));
    paramParcel2.writeNoException();
    IBinder iBinder1 = iBinder5;
    if (dzg != null)
      iBinder1 = dzg.asBinder(); 
    paramParcel2.writeStrongBinder(iBinder1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */