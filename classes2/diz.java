import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.location.LocationSettingsResult;

public abstract class diz extends Binder implements diy {
  public diz() {
    attachInterface(this, "com.google.android.gms.location.internal.ISettingsCallbacks");
  }
  
  public static diy a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.internal.ISettingsCallbacks");
    return (iInterface != null && iInterface instanceof diy) ? (diy)iInterface : new dja(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.location.internal.ISettingsCallbacks");
        return true;
      case 1:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.location.internal.ISettingsCallbacks");
    if (paramParcel1.readInt() != 0) {
      LocationSettingsResult locationSettingsResult = (LocationSettingsResult)LocationSettingsResult.CREATOR.createFromParcel(paramParcel1);
      a(locationSettingsResult);
      return true;
    } 
    paramParcel1 = null;
    a((LocationSettingsResult)paramParcel1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\diz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */