import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;

public abstract class eez extends Binder implements eey {
  public static eey a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
    return (iInterface != null && iInterface instanceof eey) ? (eey)iInterface : new efa(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    String str2;
    LatLng latLng2;
    String str1;
    IBinder iBinder;
    float f;
    LatLng latLng3 = null;
    LatLng latLng4 = null;
    boolean bool2 = false;
    boolean bool = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool6 = false;
    boolean bool5 = false;
    boolean bool1 = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        a();
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        str2 = b();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str2);
        return true;
      case 3:
        str2.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        latLng3 = latLng4;
        if (str2.readInt() != 0)
          latLng3 = (LatLng)LatLng.CREATOR.createFromParcel((Parcel)str2); 
        a(latLng3);
        paramParcel2.writeNoException();
        return true;
      case 4:
        str2.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
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
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        a(latLng2.readString());
        paramParcel2.writeNoException();
        return true;
      case 6:
        latLng2.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        str1 = d();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str1);
        return true;
      case 7:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        b(str1.readString());
        paramParcel2.writeNoException();
        return true;
      case 8:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        str1 = e();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str1);
        return true;
      case 9:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        if (str1.readInt() != 0) {
          bool = true;
          a(bool);
          paramParcel2.writeNoException();
          return true;
        } 
        bool = false;
        a(bool);
        paramParcel2.writeNoException();
        return true;
      case 10:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        bool = f();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 11:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        g();
        paramParcel2.writeNoException();
        return true;
      case 12:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        h();
        paramParcel2.writeNoException();
        return true;
      case 13:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        bool = i();
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 14:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        if (str1.readInt() != 0)
          bool = true; 
        b(bool);
        paramParcel2.writeNoException();
        return true;
      case 15:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        bool = j();
        paramParcel2.writeNoException();
        paramInt1 = bool3;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 16:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        bool = a(a(str1.readStrongBinder()));
        paramParcel2.writeNoException();
        paramInt1 = bool4;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 17:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        paramInt1 = k();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 18:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        a(cwy.a(str1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 19:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        a(str1.readFloat(), str1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 20:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        bool = bool6;
        if (str1.readInt() != 0)
          bool = true; 
        c(bool);
        paramParcel2.writeNoException();
        return true;
      case 21:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        bool = l();
        paramParcel2.writeNoException();
        paramInt1 = bool5;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 22:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        a(str1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 23:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        f = m();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 24:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        b(str1.readFloat(), str1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 25:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        b(str1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 26:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        f = n();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 27:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        c(str1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 28:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        f = o();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 29:
        str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
        b(cwy.a(str1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 30:
        break;
    } 
    str1.enforceInterface("com.google.android.gms.maps.model.internal.IMarkerDelegate");
    cwx cwx = p();
    paramParcel2.writeNoException();
    LatLng latLng1 = latLng3;
    if (cwx != null)
      iBinder = cwx.asBinder(); 
    paramParcel2.writeStrongBinder(iBinder);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eez.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */