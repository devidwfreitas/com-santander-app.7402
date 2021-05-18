import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbak;
import com.google.android.gms.internal.zzbaw;

class dqg implements dqe {
  private IBinder a;
  
  dqg(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(ConnectionResult paramConnectionResult, zzbak paramzzbak) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInCallbacks");
      if (paramConnectionResult != null) {
        parcel1.writeInt(1);
        paramConnectionResult.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramzzbak != null) {
        parcel1.writeInt(1);
        paramzzbak.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(Status paramStatus) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInCallbacks");
      if (paramStatus != null) {
        parcel1.writeInt(1);
        paramStatus.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(Status paramStatus, GoogleSignInAccount paramGoogleSignInAccount) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInCallbacks");
      if (paramStatus != null) {
        parcel1.writeInt(1);
        paramStatus.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramGoogleSignInAccount != null) {
        parcel1.writeInt(1);
        paramGoogleSignInAccount.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(7, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzbaw paramzzbaw) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInCallbacks");
      if (paramzzbaw != null) {
        parcel1.writeInt(1);
        paramzzbaw.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(8, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
  
  public void b(Status paramStatus) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInCallbacks");
      if (paramStatus != null) {
        parcel1.writeInt(1);
        paramStatus.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */