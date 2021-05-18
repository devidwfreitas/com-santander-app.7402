import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;

class daa implements czy {
  private IBinder a;
  
  daa(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(Message paramMessage) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("com.google.android.gms.iid.IMessengerCompat");
      if (paramMessage != null) {
        parcel.writeInt(1);
        paramMessage.writeToParcel(parcel, 0);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\daa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */