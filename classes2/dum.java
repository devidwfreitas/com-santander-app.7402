import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;

public abstract class dum extends Binder implements dul {
  public dum() {
    attachInterface(this, "com.google.android.gms.location.ILocationCallback");
  }
  
  public static dul a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
    return (iInterface != null && iInterface instanceof dul) ? (dul)iInterface : new dun(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    LocationAvailability locationAvailability;
    LocationResult locationResult2 = null;
    Parcel parcel = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.location.ILocationCallback");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.location.ILocationCallback");
        paramParcel2 = parcel;
        if (paramParcel1.readInt() != 0)
          locationResult1 = (LocationResult)LocationResult.CREATOR.createFromParcel(paramParcel1); 
        a(locationResult1);
        return true;
      case 2:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.location.ILocationCallback");
    LocationResult locationResult1 = locationResult2;
    if (paramParcel1.readInt() != 0)
      locationAvailability = (LocationAvailability)LocationAvailability.CREATOR.createFromParcel(paramParcel1); 
    a(locationAvailability);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dum.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */