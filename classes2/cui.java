import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;

class cui implements cug {
  private IBinder a;
  
  cui(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public Account a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.common.internal.IAccountAccessor");
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (Account)Account.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cui.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */