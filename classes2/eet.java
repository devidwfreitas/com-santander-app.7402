import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;

public abstract class eet extends Binder implements ees {
  public static ees a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
    return (iInterface != null && iInterface instanceof ees) ? (ees)iInterface : new eeu(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    List<IBinder> list;
    boolean bool;
    boolean bool2 = false;
    boolean bool1 = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
        paramInt1 = a();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
        paramInt1 = b();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
        list = c();
        paramParcel2.writeNoException();
        paramParcel2.writeBinderList(list);
        return true;
      case 4:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
        bool = d();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 5:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
        bool = a(a(list.readStrongBinder()));
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 6:
        break;
    } 
    list.enforceInterface("com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate");
    paramInt1 = e();
    paramParcel2.writeNoException();
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eet.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */