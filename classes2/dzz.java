import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;

public abstract class dzz extends Binder implements dzy {
  public dzz() {
    attachInterface(this, "com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener");
  }
  
  public static dzy a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener");
    return (iInterface != null && iInterface instanceof dzy) ? (dzy)iInterface : new eaa(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener");
        return true;
      case 1:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener");
    if (paramParcel1.readInt() != 0) {
      StreetViewPanoramaLocation streetViewPanoramaLocation = (StreetViewPanoramaLocation)StreetViewPanoramaLocation.CREATOR.createFromParcel(paramParcel1);
      a(streetViewPanoramaLocation);
      paramParcel2.writeNoException();
      return true;
    } 
    paramParcel1 = null;
    a((StreetViewPanoramaLocation)paramParcel1);
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dzz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */