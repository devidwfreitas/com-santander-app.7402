import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cwy extends Binder implements cwx {
  public cwy() {
    attachInterface(this, "com.google.android.gms.dynamic.IObjectWrapper");
  }
  
  public static cwx a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
    return (iInterface != null && iInterface instanceof cwx) ? (cwx)iInterface : new cwz(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        break;
    } 
    paramParcel2.writeString("com.google.android.gms.dynamic.IObjectWrapper");
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */