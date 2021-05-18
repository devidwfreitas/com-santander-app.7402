import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.VisibleRegion;

class dzc implements dza {
  private IBinder a;
  
  dzc(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public LatLng a(cwx paramcwx) {
    cwx cwx1 = null;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      LatLng latLng;
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IProjectionDelegate");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      paramcwx = cwx1;
      if (parcel2.readInt() != 0)
        latLng = (LatLng)LatLng.CREATOR.createFromParcel(parcel2); 
      return latLng;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public VisibleRegion a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IProjectionDelegate");
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (VisibleRegion)VisibleRegion.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx a(LatLng paramLatLng) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IProjectionDelegate");
      if (paramLatLng != null) {
        parcel1.writeInt(1);
        paramLatLng.writeToParcel(parcel1, 0);
        this.a.transact(2, parcel1, parcel2, 0);
        parcel2.readException();
        return cwy.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dzc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */