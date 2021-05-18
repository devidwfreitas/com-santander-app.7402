import android.os.IBinder;
import android.os.Parcel;

class dfu implements dfs {
  private IBinder a;
  
  dfu(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(dfp paramdfp) {
    IBinder iBinder = null;
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
      if (paramdfp != null)
        iBinder = paramdfp.asBinder(); 
      parcel.writeStrongBinder(iBinder);
      this.a.transact(1, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dfu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */