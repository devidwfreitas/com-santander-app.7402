import android.location.Location;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;

public abstract class dyp extends Binder implements dyo {
  public static dyo a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
    return (iInterface != null && iInterface instanceof dyo) ? (dyo)iInterface : new dyq(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    CameraPosition cameraPosition1;
    IBinder iBinder3;
    eeg eeg1;
    IBinder iBinder2;
    Location location1;
    IBinder iBinder1;
    float f;
    efb efb;
    eey eey;
    eep eep;
    efe efe;
    dzm dzm;
    dza dza;
    eem eem;
    ees ees;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool7 = false;
    boolean bool4 = false;
    boolean bool8 = false;
    boolean bool9 = false;
    boolean bool5 = false;
    boolean bool6 = false;
    boolean bool = false;
    eeg eeg2 = null;
    IBinder iBinder4 = null;
    IBinder iBinder5 = null;
    IBinder iBinder6 = null;
    Location location2 = null;
    IBinder iBinder8 = null;
    IBinder iBinder7 = null;
    IBinder iBinder9 = null;
    CameraPosition cameraPosition2 = null;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        cameraPosition1 = a();
        paramParcel2.writeNoException();
        if (cameraPosition1 != null) {
          paramParcel2.writeInt(1);
          cameraPosition1.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 2:
        cameraPosition1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        f = b();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 3:
        cameraPosition1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        f = c();
        paramParcel2.writeNoException();
        paramParcel2.writeFloat(f);
        return true;
      case 4:
        cameraPosition1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(cwy.a(cameraPosition1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 5:
        cameraPosition1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        b(cwy.a(cameraPosition1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 6:
        cameraPosition1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(cwy.a(cameraPosition1.readStrongBinder()), eaq.a(cameraPosition1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 7:
        cameraPosition1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(cwy.a(cameraPosition1.readStrongBinder()), cameraPosition1.readInt(), eaq.a(cameraPosition1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 8:
        cameraPosition1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        d();
        paramParcel2.writeNoException();
        return true;
      case 9:
        cameraPosition1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (cameraPosition1.readInt() != 0) {
          PolylineOptions polylineOptions = (PolylineOptions)PolylineOptions.CREATOR.createFromParcel((Parcel)cameraPosition1);
        } else {
          cameraPosition1 = null;
        } 
        eeg2 = a((PolylineOptions)cameraPosition1);
        paramParcel2.writeNoException();
        cameraPosition1 = cameraPosition2;
        if (eeg2 != null)
          iBinder3 = eeg2.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder3);
        return true;
      case 10:
        iBinder3.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder3.readInt() != 0) {
          PolygonOptions polygonOptions = (PolygonOptions)PolygonOptions.CREATOR.createFromParcel((Parcel)iBinder3);
        } else {
          iBinder3 = null;
        } 
        efb = a((PolygonOptions)iBinder3);
        paramParcel2.writeNoException();
        eeg1 = eeg2;
        if (efb != null)
          iBinder2 = efb.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 11:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder2.readInt() != 0) {
          MarkerOptions markerOptions = (MarkerOptions)MarkerOptions.CREATOR.createFromParcel((Parcel)iBinder2);
        } else {
          iBinder2 = null;
        } 
        eey = a((MarkerOptions)iBinder2);
        paramParcel2.writeNoException();
        iBinder2 = iBinder4;
        if (eey != null)
          iBinder2 = eey.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 12:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder2.readInt() != 0) {
          GroundOverlayOptions groundOverlayOptions = (GroundOverlayOptions)GroundOverlayOptions.CREATOR.createFromParcel((Parcel)iBinder2);
        } else {
          iBinder2 = null;
        } 
        eep = a((GroundOverlayOptions)iBinder2);
        paramParcel2.writeNoException();
        iBinder2 = iBinder5;
        if (eep != null)
          iBinder2 = eep.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 13:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder2.readInt() != 0) {
          TileOverlayOptions tileOverlayOptions = (TileOverlayOptions)TileOverlayOptions.CREATOR.createFromParcel((Parcel)iBinder2);
        } else {
          iBinder2 = null;
        } 
        efe = a((TileOverlayOptions)iBinder2);
        paramParcel2.writeNoException();
        iBinder2 = iBinder6;
        if (efe != null)
          iBinder2 = efe.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 14:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        e();
        paramParcel2.writeNoException();
        return true;
      case 15:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        paramInt1 = f();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 16:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(iBinder2.readInt());
        paramParcel2.writeNoException();
        return true;
      case 17:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = g();
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
          paramParcel2.writeInt(paramInt1);
          return true;
        } 
        paramInt1 = 0;
        paramParcel2.writeInt(paramInt1);
        return true;
      case 18:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder2.readInt() != 0)
          bool = true; 
        a(bool);
        paramParcel2.writeNoException();
        return true;
      case 19:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = h();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 20:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder2.readInt() != 0) {
          bool = true;
        } else {
          bool = false;
        } 
        bool = b(bool);
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 21:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = i();
        paramParcel2.writeNoException();
        paramInt1 = bool3;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 22:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = bool7;
        if (iBinder2.readInt() != 0)
          bool = true; 
        c(bool);
        paramParcel2.writeNoException();
        return true;
      case 23:
        iBinder2.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        location1 = j();
        paramParcel2.writeNoException();
        if (location1 != null) {
          paramParcel2.writeInt(1);
          location1.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 24:
        location1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(dys.a(location1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 25:
        location1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        dzm = k();
        paramParcel2.writeNoException();
        location1 = location2;
        if (dzm != null)
          iBinder1 = dzm.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 26:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        dza = l();
        paramParcel2.writeNoException();
        iBinder1 = iBinder8;
        if (dza != null)
          iBinder1 = dza.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 27:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(eaz.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 28:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ecj.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 29:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ecp.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 30:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ecv.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 31:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ecy.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 32:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ebx.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 33:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(eaw.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 35:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder1.readInt() != 0) {
          CircleOptions circleOptions = (CircleOptions)CircleOptions.CREATOR.createFromParcel((Parcel)iBinder1);
        } else {
          iBinder1 = null;
        } 
        eem = a((CircleOptions)iBinder1);
        paramParcel2.writeNoException();
        iBinder1 = iBinder7;
        if (eem != null)
          iBinder1 = eem.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 36:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ede.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 37:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(edb.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 38:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(eal.a(iBinder1.readStrongBinder()), cwy.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 39:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(iBinder1.readInt(), iBinder1.readInt(), iBinder1.readInt(), iBinder1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 40:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = m();
        paramParcel2.writeNoException();
        paramInt1 = bool4;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 41:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = bool8;
        if (iBinder1.readInt() != 0)
          bool = true; 
        d(bool);
        paramParcel2.writeNoException();
        return true;
      case 42:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ecm.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 44:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        ees = n();
        paramParcel2.writeNoException();
        iBinder1 = iBinder9;
        if (ees != null)
          iBinder1 = ees.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 45:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ebu.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 51:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = bool9;
        if (iBinder1.readInt() != 0)
          bool = true; 
        e(bool);
        paramParcel2.writeNoException();
        return true;
      case 53:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ecs.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 54:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder1.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)iBinder1);
          a(bundle);
          paramParcel2.writeNoException();
          return true;
        } 
        iBinder1 = null;
        a((Bundle)iBinder1);
        paramParcel2.writeNoException();
        return true;
      case 55:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        o();
        paramParcel2.writeNoException();
        return true;
      case 56:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        p();
        paramParcel2.writeNoException();
        return true;
      case 57:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        q();
        paramParcel2.writeNoException();
        return true;
      case 58:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        r();
        paramParcel2.writeNoException();
        return true;
      case 59:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        bool = s();
        paramParcel2.writeNoException();
        paramInt1 = bool5;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 60:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder1.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)iBinder1);
        } else {
          iBinder1 = null;
        } 
        b((Bundle)iBinder1);
        paramParcel2.writeNoException();
        if (iBinder1 != null) {
          paramParcel2.writeInt(1);
          iBinder1.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 61:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(iBinder1.readString());
        paramParcel2.writeNoException();
        return true;
      case 71:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(eal.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 80:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(edh.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 81:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder1.readInt() != 0) {
          Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel((Parcel)iBinder1);
          c(bundle);
          paramParcel2.writeNoException();
          return true;
        } 
        iBinder1 = null;
        c((Bundle)iBinder1);
        paramParcel2.writeNoException();
        return true;
      case 82:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        t();
        paramParcel2.writeNoException();
        return true;
      case 83:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ebr.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 84:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ecd.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 85:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(edk.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 86:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(eca.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 87:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(dzt.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 89:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ebo.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 92:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(iBinder1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 93:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        b(iBinder1.readFloat());
        paramParcel2.writeNoException();
        return true;
      case 94:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        u();
        paramParcel2.writeNoException();
        return true;
      case 95:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder1.readInt() != 0) {
          LatLngBounds latLngBounds = (LatLngBounds)LatLngBounds.CREATOR.createFromParcel((Parcel)iBinder1);
          a(latLngBounds);
          paramParcel2.writeNoException();
          return true;
        } 
        iBinder1 = null;
        a((LatLngBounds)iBinder1);
        paramParcel2.writeNoException();
        return true;
      case 96:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ebl.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 97:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ebi.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 98:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ebf.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 99:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        a(ebc.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 91:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        if (iBinder1.readInt() != 0) {
          MapStyleOptions mapStyleOptions = (MapStyleOptions)MapStyleOptions.CREATOR.createFromParcel((Parcel)iBinder1);
        } else {
          iBinder1 = null;
        } 
        bool = a((MapStyleOptions)iBinder1);
        paramParcel2.writeNoException();
        paramInt1 = bool6;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 101:
        iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
        v();
        paramParcel2.writeNoException();
        return true;
      case 102:
        break;
    } 
    iBinder1.enforceInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
    w();
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dyp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */