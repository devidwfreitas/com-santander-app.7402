import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.internal.zzban;
import com.google.android.gms.internal.zzbar;
import com.google.android.gms.internal.zzbau;

class dqj implements dqh {
  private IBinder a;
  
  dqj(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      parcel1.writeInt(paramInt);
      this.a.transact(7, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(int paramInt, Account paramAccount, dqe paramdqe) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      parcel1.writeInt(paramInt);
      if (paramAccount != null) {
        parcel1.writeInt(1);
        paramAccount.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramdqe != null) {
        IBinder iBinder = paramdqe.asBinder();
      } else {
        paramAccount = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramAccount);
      this.a.transact(8, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzad paramzzad, cux paramcux) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramzzad != null) {
        parcel1.writeInt(1);
        paramzzad.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramcux != null) {
        IBinder iBinder = paramcux.asBinder();
      } else {
        paramzzad = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramzzad);
      this.a.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzd paramzzd, dqe paramdqe) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramzzd != null) {
        parcel1.writeInt(1);
        paramzzd.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramdqe != null) {
        IBinder iBinder = paramdqe.asBinder();
      } else {
        paramzzd = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramzzd);
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzban paramzzban) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramzzban != null) {
        parcel1.writeInt(1);
        paramzzban.writeToParcel(parcel1, 0);
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
  
  public void a(zzbar paramzzbar, dqe paramdqe) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramzzbar != null) {
        parcel1.writeInt(1);
        paramzzbar.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramdqe != null) {
        IBinder iBinder = paramdqe.asBinder();
      } else {
        paramzzbar = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramzzbar);
      this.a.transact(10, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzbau paramzzbau, dqe paramdqe) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramzzbau != null) {
        parcel1.writeInt(1);
        paramzzbau.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramdqe != null) {
        IBinder iBinder = paramdqe.asBinder();
      } else {
        paramzzbau = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramzzbau);
      this.a.transact(12, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(cug paramcug, int paramInt, boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramcug != null) {
        IBinder iBinder = paramcug.asBinder();
      } else {
        paramcug = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcug);
      parcel1.writeInt(paramInt);
      paramInt = bool;
      if (paramBoolean)
        paramInt = 1; 
      parcel1.writeInt(paramInt);
      this.a.transact(9, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(dqe paramdqe) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramdqe != null) {
        IBinder iBinder = paramdqe.asBinder();
      } else {
        paramdqe = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramdqe);
      this.a.transact(11, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(4, parcel1, parcel2, 0);
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
  
  public void b(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.signin.internal.ISignInService");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(13, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */