import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.zzarz;

public abstract class diq extends Binder implements dip {
  public diq() {
    attachInterface(this, "com.google.android.gms.location.internal.IFusedLocationProviderCallback");
  }
  
  public static dip a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    return (iInterface != null && iInterface instanceof dip) ? (dip)iInterface : new dir(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
        return true;
      case 1:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    if (paramParcel1.readInt() != 0) {
      zzarz zzarz = (zzarz)zzarz.CREATOR.createFromParcel(paramParcel1);
      a(zzarz);
      return true;
    } 
    paramParcel1 = null;
    a((zzarz)paramParcel1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\diq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */