import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.Tile;

public abstract class efi extends Binder implements efh {
  public efi() {
    attachInterface(this, "com.google.android.gms.maps.model.internal.ITileProviderDelegate");
  }
  
  public static efh a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    return (iInterface != null && iInterface instanceof efh) ? (efh)iInterface : new efj(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
        return true;
      case 1:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ITileProviderDelegate");
    Tile tile = a(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readInt());
    paramParcel2.writeNoException();
    if (tile != null) {
      paramParcel2.writeInt(1);
      tile.writeToParcel(paramParcel2, 1);
      return true;
    } 
    paramParcel2.writeInt(0);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */