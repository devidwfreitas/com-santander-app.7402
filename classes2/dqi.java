import android.accounts.Account;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.internal.zzban;
import com.google.android.gms.internal.zzbar;
import com.google.android.gms.internal.zzbau;

public abstract class dqi extends Binder implements dqh {
  public static dqh a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
    return (iInterface != null && iInterface instanceof dqh) ? (dqh)iInterface : new dqj(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    zzban zzban1;
    zzad zzad1;
    Account account;
    cug cug1;
    zzbar zzbar1;
    zzbau zzbau;
    boolean bool2 = false;
    boolean bool1 = false;
    zzd zzd2 = null;
    zzban zzban2 = null;
    zzad zzad2 = null;
    cug cug2 = null;
    zzbar zzbar2 = null;
    zzd zzd1 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.signin.internal.ISignInService");
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        if (paramParcel1.readInt() != 0)
          zzd1 = (zzd)zzd.CREATOR.createFromParcel(paramParcel1); 
        a(zzd1, dqf.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        zzd1 = zzd2;
        if (paramParcel1.readInt() != 0)
          zzban1 = (zzban)zzban.CREATOR.createFromParcel(paramParcel1); 
        a(zzban1);
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        if (paramParcel1.readInt() != 0) {
          bool1 = true;
          a(bool1);
          paramParcel2.writeNoException();
          return true;
        } 
        bool1 = false;
        a(bool1);
        paramParcel2.writeNoException();
        return true;
      case 5:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        zzban1 = zzban2;
        if (paramParcel1.readInt() != 0)
          zzad1 = (zzad)zzad.CREATOR.createFromParcel(paramParcel1); 
        a(zzad1, cuy.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 7:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        a(paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 8:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        paramInt1 = paramParcel1.readInt();
        zzad1 = zzad2;
        if (paramParcel1.readInt() != 0)
          account = (Account)Account.CREATOR.createFromParcel(paramParcel1); 
        a(paramInt1, account, dqf.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 9:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        cug1 = cuh.a(paramParcel1.readStrongBinder());
        paramInt1 = paramParcel1.readInt();
        if (paramParcel1.readInt() != 0)
          bool1 = true; 
        a(cug1, paramInt1, bool1);
        paramParcel2.writeNoException();
        return true;
      case 10:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        cug1 = cug2;
        if (paramParcel1.readInt() != 0)
          zzbar1 = (zzbar)zzbar.CREATOR.createFromParcel(paramParcel1); 
        a(zzbar1, dqf.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 11:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        a(dqf.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 12:
        paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
        zzbar1 = zzbar2;
        if (paramParcel1.readInt() != 0)
          zzbau = (zzbau)zzbau.CREATOR.createFromParcel(paramParcel1); 
        a(zzbau, dqf.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 13:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.signin.internal.ISignInService");
    bool1 = bool2;
    if (paramParcel1.readInt() != 0)
      bool1 = true; 
    b(bool1);
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dqi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */