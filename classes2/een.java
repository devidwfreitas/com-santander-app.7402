import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.List;

public abstract class een extends Binder implements eem {
  public static eem a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
    return (iInterface != null && iInterface instanceof eem) ? (eem)iInterface : new eeo(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    String str;
    LatLng latLng2;
    List<PatternItem> list;
    IBinder iBinder;
    double d;
    float f;
    LatLng latLng3 = null;
    LatLng latLng4 = null;
    boolean bool2 = false;
    boolean bool = false;
    boolean bool3 = false;
    boolean bool1 = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.ICircleDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        a();
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        str = b();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str);
        return true;
      case 3:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        latLng3 = latLng4;
        if (str.readInt() != 0)
          latLng3 = (LatLng)LatLng.CREATOR.createFromParcel((Parcel)str); 
        a(latLng3);
        paramParcel2.writeNoException();
        return true;
      case 4:
        str.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        latLng2 = c();
        paramParcel2.writeNoException();
        if (latLng2 != null) {
          paramParcel2.writeInt(1);
          latLng2.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 5:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        a(latLng2.readDouble());
        paramParcel2.writeNoException();
        return true;
      case 6:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        d = d();
        paramParcel2.writeNoException();
        paramParcel2.writeDouble(d);
        return true;
      case 7:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        a(latLng2.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 8:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        f = e();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 9:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        a(latLng2.readInt());
        paramParcel2.writeNoException();
        return true;
      case 10:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        paramInt1 = f();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 11:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        b(latLng2.readInt());
        paramParcel2.writeNoException();
        return true;
      case 12:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        paramInt1 = g();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 13:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        b(latLng2.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 14:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        f = h();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 15:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        if (latLng2.readInt() != 0) {
          bool = true;
          a(bool);
          paramParcel2.writeNoException();
          return true;
        } 
        bool = false;
        a(bool);
        paramParcel2.writeNoException();
        return true;
      case 16:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        bool = i();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 17:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        bool = a(a(latLng2.readStrongBinder()));
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 18:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        paramInt1 = j();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 19:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        if (latLng2.readInt() != 0)
          bool = true; 
        b(bool);
        paramParcel2.writeNoException();
        return true;
      case 20:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        bool = k();
        paramParcel2.writeNoException();
        paramInt1 = bool3;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 21:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        a(latLng2.createTypedArrayList(PatternItem.CREATOR));
        paramParcel2.writeNoException();
        return true;
      case 22:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        list = l();
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(list);
        return true;
      case 23:
        list.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
        a(cwy.a(list.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 24:
        break;
    } 
    list.enforceInterface("com.google.android.gms.maps.model.internal.ICircleDelegate");
    cwx cwx = m();
    paramParcel2.writeNoException();
    LatLng latLng1 = latLng3;
    if (cwx != null)
      iBinder = cwx.asBinder(); 
    paramParcel2.writeStrongBinder(iBinder);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\een.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */