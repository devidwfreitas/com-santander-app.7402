import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;

class diu implements dis {
  private IBinder a;
  
  diu(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(int paramInt, PendingIntent paramPendingIntent) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
      parcel.writeInt(paramInt);
      if (paramPendingIntent != null) {
        parcel.writeInt(1);
        paramPendingIntent.writeToParcel(parcel, 0);
      } else {
        parcel.writeInt(0);
      } 
      this.a.transact(3, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public void a(int paramInt, String[] paramArrayOfString) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
      parcel.writeInt(paramInt);
      parcel.writeStringArray(paramArrayOfString);
      this.a.transact(1, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
  
  public void b(int paramInt, String[] paramArrayOfString) {
    Parcel parcel = Parcel.obtain();
    try {
      parcel.writeInterfaceToken("com.google.android.gms.location.internal.IGeofencerCallbacks");
      parcel.writeInt(paramInt);
      parcel.writeStringArray(paramArrayOfString);
      this.a.transact(2, parcel, null, 1);
      return;
    } finally {
      parcel.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\diu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */