import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ecg extends Binder implements ecf {
  public static ecf a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnLocationChangeListener");
    return (iInterface != null && iInterface instanceof ecf) ? (ecf)iInterface : new ech(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IOnLocationChangeListener");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnLocationChangeListener");
        a(cwy.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 2:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnLocationChangeListener");
    if (paramParcel1.readInt() != 0) {
      Location location = (Location)Location.CREATOR.createFromParcel(paramParcel1);
      a(location);
      paramParcel2.writeNoException();
      return true;
    } 
    paramParcel1 = null;
    a((Location)paramParcel1);
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ecg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */