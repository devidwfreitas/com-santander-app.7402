import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cuh extends Binder implements cug {
  public static cug a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
    return (iInterface != null && iInterface instanceof cug) ? (cug)iInterface : new cui(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.common.internal.IAccountAccessor");
        return true;
      case 2:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.IAccountAccessor");
    Account account = a();
    paramParcel2.writeNoException();
    if (account != null) {
      paramParcel2.writeInt(1);
      account.writeToParcel(paramParcel2, 1);
      return true;
    } 
    paramParcel2.writeInt(0);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cuh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */