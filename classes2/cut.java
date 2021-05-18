import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzj;

class cut implements cur {
  private final IBinder a;
  
  cut(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(cuo paramcuo, zzj paramzzj) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
      if (paramcuo != null) {
        IBinder iBinder = paramcuo.asBinder();
      } else {
        paramcuo = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcuo);
      if (paramzzj != null) {
        parcel1.writeInt(1);
        paramzzj.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(46, parcel1, parcel2, 0);
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
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cut.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */