import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzaf;

public abstract class cuy extends Binder implements cux {
  public static cux a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
    return (iInterface != null && iInterface instanceof cux) ? (cux)iInterface : new cuz(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.common.internal.IResolveAccountCallbacks");
        return true;
      case 2:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.IResolveAccountCallbacks");
    if (paramParcel1.readInt() != 0) {
      zzaf zzaf = (zzaf)zzaf.CREATOR.createFromParcel(paramParcel1);
      a(zzaf);
      paramParcel2.writeNoException();
      return true;
    } 
    paramParcel1 = null;
    a((zzaf)paramParcel1);
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cuy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */