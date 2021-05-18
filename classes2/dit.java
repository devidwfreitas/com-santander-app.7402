import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class dit extends Binder implements dis {
  public dit() {
    attachInterface(this, "com.google.android.gms.location.internal.IGeofencerCallbacks");
  }
  
  public static dis a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
    return (iInterface != null && iInterface instanceof dis) ? (dis)iInterface : new diu(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.location.internal.IGeofencerCallbacks");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
        a(paramParcel1.readInt(), paramParcel1.createStringArray());
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
        b(paramParcel1.readInt(), paramParcel1.createStringArray());
        return true;
      case 3:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGeofencerCallbacks");
    paramInt1 = paramParcel1.readInt();
    if (paramParcel1.readInt() != 0) {
      PendingIntent pendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
      a(paramInt1, pendingIntent);
      return true;
    } 
    paramParcel1 = null;
    a(paramInt1, (PendingIntent)paramParcel1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dit.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */