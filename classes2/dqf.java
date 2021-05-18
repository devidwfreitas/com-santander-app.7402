import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbak;
import com.google.android.gms.internal.zzbaw;

public abstract class dqf extends Binder implements dqe {
  public dqf() {
    attachInterface(this, "com.google.android.gms.signin.internal.ISignInCallbacks");
  }
  
  public static dqe a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
    return (iInterface != null && iInterface instanceof dqe) ? (dqe)iInterface : new dqg(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    ConnectionResult connectionResult;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.signin.internal.ISignInCallbacks");
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
        if (paramParcel1.readInt() != 0) {
          connectionResult = (ConnectionResult)ConnectionResult.CREATOR.createFromParcel(paramParcel1);
        } else {
          connectionResult = null;
        } 
        if (paramParcel1.readInt() != 0) {
          zzbak zzbak = (zzbak)zzbak.CREATOR.createFromParcel(paramParcel1);
          a(connectionResult, zzbak);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        a(connectionResult, (zzbak)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
        if (paramParcel1.readInt() != 0) {
          Status status = (Status)Status.CREATOR.createFromParcel(paramParcel1);
          a(status);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        a((Status)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 6:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
        if (paramParcel1.readInt() != 0) {
          Status status = (Status)Status.CREATOR.createFromParcel(paramParcel1);
          b(status);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        b((Status)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 7:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
        if (paramParcel1.readInt() != 0) {
          Status status = (Status)Status.CREATOR.createFromParcel(paramParcel1);
        } else {
          connectionResult = null;
        } 
        if (paramParcel1.readInt() != 0) {
          GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount)GoogleSignInAccount.CREATOR.createFromParcel(paramParcel1);
          a((Status)connectionResult, googleSignInAccount);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        a((Status)connectionResult, (GoogleSignInAccount)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 8:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInCallbacks");
    if (paramParcel1.readInt() != 0) {
      zzbaw zzbaw = (zzbaw)zzbaw.CREATOR.createFromParcel(paramParcel1);
      a(zzbaw);
      paramParcel2.writeNoException();
      return true;
    } 
    paramParcel1 = null;
    a((zzbaw)paramParcel1);
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */