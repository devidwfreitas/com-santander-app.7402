import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class eek extends Binder implements eej {
  public static eej a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    return (iInterface != null && iInterface instanceof eej) ? (eej)iInterface : new eel(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    cwx cwx2;
    IBinder iBinder2;
    cwx cwx1;
    IBinder iBinder3 = null;
    IBinder iBinder4 = null;
    IBinder iBinder5 = null;
    cwx cwx3 = null;
    IBinder iBinder6 = null;
    cwx cwx4 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        cwx2 = a(paramParcel1.readInt());
        paramParcel2.writeNoException();
        if (cwx2 != null) {
          iBinder2 = cwx2.asBinder();
          paramParcel2.writeStrongBinder(iBinder2);
          return true;
        } 
        cwx2 = null;
        paramParcel2.writeStrongBinder((IBinder)cwx2);
        return true;
      case 2:
        cwx2.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        cwx3 = a(cwx2.readString());
        paramParcel2.writeNoException();
        cwx2 = cwx4;
        if (cwx3 != null)
          iBinder2 = cwx3.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 3:
        iBinder2.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        cwx3 = b(iBinder2.readString());
        paramParcel2.writeNoException();
        iBinder2 = iBinder3;
        if (cwx3 != null)
          iBinder2 = cwx3.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 4:
        iBinder2.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        cwx3 = a();
        paramParcel2.writeNoException();
        iBinder2 = iBinder4;
        if (cwx3 != null)
          iBinder2 = cwx3.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 5:
        iBinder2.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        cwx3 = a(iBinder2.readFloat());
        paramParcel2.writeNoException();
        iBinder2 = iBinder5;
        if (cwx3 != null)
          iBinder2 = cwx3.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 6:
        iBinder2.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
        if (iBinder2.readInt() != 0) {
          Bitmap bitmap = (Bitmap)Bitmap.CREATOR.createFromParcel((Parcel)iBinder2);
        } else {
          iBinder2 = null;
        } 
        cwx4 = a((Bitmap)iBinder2);
        paramParcel2.writeNoException();
        cwx1 = cwx3;
        if (cwx4 != null)
          iBinder1 = cwx4.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 7:
        break;
    } 
    iBinder1.enforceInterface("com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate");
    cwx3 = c(iBinder1.readString());
    paramParcel2.writeNoException();
    IBinder iBinder1 = iBinder6;
    if (cwx3 != null)
      iBinder1 = cwx3.asBinder(); 
    paramParcel2.writeStrongBinder(iBinder1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eek.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */