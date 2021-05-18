import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.PointOfInterest;

class edi implements edg {
  private IBinder a;
  
  edi(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public void a(PointOfInterest paramPointOfInterest) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnPoiClickListener");
      if (paramPointOfInterest != null) {
        parcel1.writeInt(1);
        paramPointOfInterest.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(1, parcel1, parcel2, 0);
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


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */