import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.List;

public abstract class efc extends Binder implements efb {
  public static efb a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
    return (iInterface != null && iInterface instanceof efb) ? (efb)iInterface : new efd(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    String str;
    List<LatLng> list;
    float f;
    boolean bool1 = false;
    boolean bool5 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool6 = false;
    boolean bool4 = false;
    boolean bool = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        a();
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        str = b();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str);
        return true;
      case 3:
        str.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        a(str.createTypedArrayList(LatLng.CREATOR));
        paramParcel2.writeNoException();
        return true;
      case 4:
        str.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        list = c();
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(list);
        return true;
      case 5:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        b(list.readArrayList(getClass().getClassLoader()));
        paramParcel2.writeNoException();
        return true;
      case 6:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        list = d();
        paramParcel2.writeNoException();
        paramParcel2.writeList(list);
        return true;
      case 7:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        a(list.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 8:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        f = e();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 9:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        a(list.readInt());
        paramParcel2.writeNoException();
        return true;
      case 10:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        paramInt1 = f();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 11:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        b(list.readInt());
        paramParcel2.writeNoException();
        return true;
      case 12:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        paramInt1 = g();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 13:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        b(list.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 14:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        f = h();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 15:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        if (list.readInt() != 0)
          bool = true; 
        a(bool);
        paramParcel2.writeNoException();
        return true;
      case 16:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        bool = i();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 17:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        bool = bool5;
        if (list.readInt() != 0)
          bool = true; 
        b(bool);
        paramParcel2.writeNoException();
        return true;
      case 18:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        bool = j();
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 19:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        bool = a(a(list.readStrongBinder()));
        paramParcel2.writeNoException();
        paramInt1 = bool3;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 20:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        paramInt1 = k();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 21:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        bool = bool6;
        if (list.readInt() != 0)
          bool = true; 
        c(bool);
        paramParcel2.writeNoException();
        return true;
      case 22:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        bool = l();
        paramParcel2.writeNoException();
        paramInt1 = bool4;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 23:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        c(list.readInt());
        paramParcel2.writeNoException();
        return true;
      case 24:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        paramInt1 = m();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 25:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        c(list.createTypedArrayList(PatternItem.CREATOR));
        paramParcel2.writeNoException();
        return true;
      case 26:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        list = (List)n();
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(list);
        return true;
      case 27:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
        a(cwy.a(list.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 28:
        break;
    } 
    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolygonDelegate");
    cwx cwx = o();
    paramParcel2.writeNoException();
    if (cwx != null) {
      IBinder iBinder = cwx.asBinder();
      paramParcel2.writeStrongBinder(iBinder);
      return true;
    } 
    cwx = null;
    paramParcel2.writeStrongBinder((IBinder)cwx);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\efc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */