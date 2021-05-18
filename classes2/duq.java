import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;

class duq implements duo {
  private IBinder a;
  
  duq(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(Location paramLocation) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("com.google.android.gms.location.ILocationListener");
      if (paramLocation != null) {
        parcel.writeInt(1);
        paramLocation.writeToParcel(parcel, 0);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\duq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */