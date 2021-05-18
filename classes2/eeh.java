import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.Cap;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PatternItem;
import java.util.List;

public abstract class eeh extends Binder implements eeg {
  public static eeg a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
    return (iInterface != null && iInterface instanceof eeg) ? (eeg)iInterface : new eei(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    String str;
    List<LatLng> list1;
    Cap cap;
    IBinder iBinder;
    float f;
    List list2 = null;
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
        paramParcel2.writeString("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        a();
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        str = b();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str);
        return true;
      case 3:
        str.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        a(str.createTypedArrayList(LatLng.CREATOR));
        paramParcel2.writeNoException();
        return true;
      case 4:
        str.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        list1 = c();
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(list1);
        return true;
      case 5:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        a(list1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 6:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        f = d();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 7:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        a(list1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 8:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        paramInt1 = e();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 9:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        b(list1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 10:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        f = f();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 11:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        if (list1.readInt() != 0)
          bool = true; 
        a(bool);
        paramParcel2.writeNoException();
        return true;
      case 12:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        bool = g();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 13:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        bool = bool5;
        if (list1.readInt() != 0)
          bool = true; 
        b(bool);
        paramParcel2.writeNoException();
        return true;
      case 14:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        bool = h();
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 15:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        bool = a(a(list1.readStrongBinder()));
        paramParcel2.writeNoException();
        paramInt1 = bool3;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 16:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        paramInt1 = i();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 17:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        bool = bool6;
        if (list1.readInt() != 0)
          bool = true; 
        c(bool);
        paramParcel2.writeNoException();
        return true;
      case 18:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        bool = j();
        paramParcel2.writeNoException();
        paramInt1 = bool4;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 19:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        if (list1.readInt() != 0) {
          Cap cap1 = (Cap)Cap.CREATOR.createFromParcel((Parcel)list1);
          a(cap1);
          paramParcel2.writeNoException();
          return true;
        } 
        list1 = null;
        a((Cap)list1);
        paramParcel2.writeNoException();
        return true;
      case 20:
        list1.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        cap = k();
        paramParcel2.writeNoException();
        if (cap != null) {
          paramParcel2.writeInt(1);
          cap.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 21:
        cap.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        if (cap.readInt() != 0) {
          cap = (Cap)Cap.CREATOR.createFromParcel((Parcel)cap);
          b(cap);
          paramParcel2.writeNoException();
          return true;
        } 
        cap = null;
        b(cap);
        paramParcel2.writeNoException();
        return true;
      case 22:
        cap.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        cap = l();
        paramParcel2.writeNoException();
        if (cap != null) {
          paramParcel2.writeInt(1);
          cap.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 23:
        cap.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        b(cap.readInt());
        paramParcel2.writeNoException();
        return true;
      case 24:
        cap.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        paramInt1 = m();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 25:
        cap.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        b(cap.createTypedArrayList(PatternItem.CREATOR));
        paramParcel2.writeNoException();
        return true;
      case 26:
        cap.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        list = n();
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(list);
        return true;
      case 27:
        list.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
        a(cwy.a(list.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 28:
        break;
    } 
    list.enforceInterface("com.google.android.gms.maps.model.internal.IPolylineDelegate");
    cwx cwx = o();
    paramParcel2.writeNoException();
    List<PatternItem> list = list2;
    if (cwx != null)
      iBinder = cwx.asBinder(); 
    paramParcel2.writeStrongBinder(iBinder);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eeh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */