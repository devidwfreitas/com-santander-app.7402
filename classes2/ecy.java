import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ecy extends Binder implements ecx {
  public ecy() {
    attachInterface(this, "com.google.android.gms.maps.internal.IOnMarkerDragListener");
  }
  
  public static ecx a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnMarkerDragListener");
    return (iInterface != null && iInterface instanceof ecx) ? (ecx)iInterface : new ecz(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMarkerDragListener");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMarkerDragListener");
        a(eez.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMarkerDragListener");
        c(eez.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 3:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMarkerDragListener");
    b(eez.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ecy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */