import android.os.IBinder;
import android.os.Parcel;

class cul implements cuj {
  private IBinder a;
  
  cul(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a() {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("com.google.android.gms.common.internal.ICancelToken");
      this.a.transact(2, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cul.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */