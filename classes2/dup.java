import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class dup extends Binder implements duo {
  public dup() {
    attachInterface(this, "com.google.android.gms.location.ILocationListener");
  }
  
  public static duo a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
    return (iInterface != null && iInterface instanceof duo) ? (duo)iInterface : new duq(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.location.ILocationListener");
        return true;
      case 1:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.location.ILocationListener");
    if (paramParcel1.readInt() != 0) {
      Location location = (Location)Location.CREATOR.createFromParcel(paramParcel1);
      a(location);
      return true;
    } 
    paramParcel1 = null;
    a((Location)paramParcel1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */