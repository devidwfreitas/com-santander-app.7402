import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cuk extends Binder implements cuj {
  public static cuj a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.ICancelToken");
    return (iInterface != null && iInterface instanceof cuj) ? (cuj)iInterface : new cul(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.common.internal.ICancelToken");
        return true;
      case 2:
        break;
    } 
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.ICancelToken");
    a();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cuk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */