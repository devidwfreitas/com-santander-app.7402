import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

public abstract class dde extends Binder implements ddd {
  public dde() {
    attachInterface(this, "com.google.android.gms.common.api.internal.IStatusCallback");
  }
  
  public static ddd a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.api.internal.IStatusCallback");
    return (iInterface != null && iInterface instanceof ddd) ? (ddd)iInterface : new ddf(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.common.api.internal.IStatusCallback");
        return true;
      case 1:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.common.api.internal.IStatusCallback");
    if (paramParcel1.readInt() != 0) {
      Status status = (Status)Status.CREATOR.createFromParcel(paramParcel1);
      a(status);
      return true;
    } 
    paramParcel1 = null;
    a((Status)paramParcel1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dde.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */