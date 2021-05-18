import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class eal extends Binder implements eak {
  public eal() {
    attachInterface(this, "com.google.android.gms.maps.internal.ISnapshotReadyCallback");
  }
  
  public static eak a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
    return (iInterface != null && iInterface instanceof eak) ? (eak)iInterface : new eam(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
        if (paramParcel1.readInt() != 0) {
          Bitmap bitmap = (Bitmap)Bitmap.CREATOR.createFromParcel(paramParcel1);
          a(bitmap);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        a((Bitmap)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 2:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
    a(cwy.a(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eal.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */