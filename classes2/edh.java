import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.PointOfInterest;

public abstract class edh extends Binder implements edg {
  public edh() {
    attachInterface(this, "com.google.android.gms.maps.internal.IOnPoiClickListener");
  }
  
  public static edg a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IOnPoiClickListener");
    return (iInterface != null && iInterface instanceof edg) ? (edg)iInterface : new edi(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IOnPoiClickListener");
        return true;
      case 1:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnPoiClickListener");
    if (paramParcel1.readInt() != 0) {
      PointOfInterest pointOfInterest = (PointOfInterest)PointOfInterest.CREATOR.createFromParcel(paramParcel1);
      a(pointOfInterest);
      paramParcel2.writeNoException();
      return true;
    } 
    paramParcel1 = null;
    a((PointOfInterest)paramParcel1);
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\edh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */