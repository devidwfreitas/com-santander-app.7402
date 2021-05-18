import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cuv extends Binder implements cuu {
  public static cuu a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
    return (iInterface != null && iInterface instanceof cuu) ? (cuu)iInterface : new cuw(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    IBinder iBinder2;
    cwx cwx1;
    IBinder iBinder1;
    cwx cwx2;
    cwx cwx3 = null;
    Parcel parcel = null;
    boolean bool = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        cwx3 = a();
        paramParcel2.writeNoException();
        paramParcel1 = parcel;
        if (cwx3 != null)
          iBinder2 = cwx3.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 2:
        iBinder2.enforceInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        cwx2 = b();
        paramParcel2.writeNoException();
        cwx1 = cwx3;
        if (cwx2 != null)
          iBinder1 = cwx2.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 3:
        iBinder1.enforceInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        bool1 = a(iBinder1.readString(), cwy.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        if (bool1) {
          paramInt1 = 1;
          paramParcel2.writeInt(paramInt1);
          return true;
        } 
        paramInt1 = 0;
        paramParcel2.writeInt(paramInt1);
        return true;
      case 4:
        break;
    } 
    iBinder1.enforceInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
    boolean bool1 = b(iBinder1.readString(), cwy.a(iBinder1.readStrongBinder()));
    paramParcel2.writeNoException();
    paramInt1 = bool;
    if (bool1)
      paramInt1 = 1; 
    paramParcel2.writeInt(paramInt1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cuv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */