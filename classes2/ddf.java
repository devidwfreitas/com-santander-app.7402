import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

class ddf implements ddd {
  private IBinder a;
  
  ddf(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(Status paramStatus) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("com.google.android.gms.common.api.internal.IStatusCallback");
      if (paramStatus != null) {
        parcel.writeInt(1);
        paramStatus.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */