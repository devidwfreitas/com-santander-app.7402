import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
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

class dyq implements dyo {
  private IBinder a;
  
  dyq(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public CameraPosition a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (CameraPosition)CameraPosition.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public eeg a(PolylineOptions paramPolylineOptions) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramPolylineOptions != null) {
        parcel1.writeInt(1);
        paramPolylineOptions.writeToParcel(parcel1, 0);
        this.a.transact(9, parcel1, parcel2, 0);
        parcel2.readException();
        return eeh.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(9, parcel1, parcel2, 0);
      parcel2.readException();
      return eeh.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public eem a(CircleOptions paramCircleOptions) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramCircleOptions != null) {
        parcel1.writeInt(1);
        paramCircleOptions.writeToParcel(parcel1, 0);
        this.a.transact(35, parcel1, parcel2, 0);
        parcel2.readException();
        return een.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(35, parcel1, parcel2, 0);
      parcel2.readException();
      return een.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public eep a(GroundOverlayOptions paramGroundOverlayOptions) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramGroundOverlayOptions != null) {
        parcel1.writeInt(1);
        paramGroundOverlayOptions.writeToParcel(parcel1, 0);
        this.a.transact(12, parcel1, parcel2, 0);
        parcel2.readException();
        return eeq.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(12, parcel1, parcel2, 0);
      parcel2.readException();
      return eeq.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public eey a(MarkerOptions paramMarkerOptions) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramMarkerOptions != null) {
        parcel1.writeInt(1);
        paramMarkerOptions.writeToParcel(parcel1, 0);
        this.a.transact(11, parcel1, parcel2, 0);
        parcel2.readException();
        return eez.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(11, parcel1, parcel2, 0);
      parcel2.readException();
      return eez.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public efb a(PolygonOptions paramPolygonOptions) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramPolygonOptions != null) {
        parcel1.writeInt(1);
        paramPolygonOptions.writeToParcel(parcel1, 0);
        this.a.transact(10, parcel1, parcel2, 0);
        parcel2.readException();
        return efc.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(10, parcel1, parcel2, 0);
      parcel2.readException();
      return efc.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public efe a(TileOverlayOptions paramTileOverlayOptions) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramTileOverlayOptions != null) {
        parcel1.writeInt(1);
        paramTileOverlayOptions.writeToParcel(parcel1, 0);
        this.a.transact(13, parcel1, parcel2, 0);
        parcel2.readException();
        return eff.a(parcel2.readStrongBinder());
      } 
      parcel1.writeInt(0);
      this.a.transact(13, parcel1, parcel2, 0);
      parcel2.readException();
      return eff.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(float paramFloat) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      parcel1.writeFloat(paramFloat);
      this.a.transact(92, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      parcel1.writeInt(paramInt);
      this.a.transact(16, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      parcel1.writeInt(paramInt1);
      parcel1.writeInt(paramInt2);
      parcel1.writeInt(paramInt3);
      parcel1.writeInt(paramInt4);
      this.a.transact(39, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(54, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(LatLngBounds paramLatLngBounds) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramLatLngBounds != null) {
        parcel1.writeInt(1);
        paramLatLngBounds.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(95, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(cwx paramcwx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(cwx paramcwx, int paramInt, eap parameap) {
    cwx cwx1 = null;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      IBinder iBinder;
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcwx != null) {
        iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      parcel1.writeInt(paramInt);
      paramcwx = cwx1;
      if (parameap != null)
        iBinder = parameap.asBinder(); 
      parcel1.writeStrongBinder(iBinder);
      this.a.transact(7, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(cwx paramcwx, eap parameap) {
    cwx cwx1 = null;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      IBinder iBinder;
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcwx != null) {
        iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      paramcwx = cwx1;
      if (parameap != null)
        iBinder = parameap.asBinder(); 
      parcel1.writeStrongBinder(iBinder);
      this.a.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(dyr paramdyr) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramdyr != null) {
        IBinder iBinder = paramdyr.asBinder();
      } else {
        paramdyr = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramdyr);
      this.a.transact(24, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(dzs paramdzs) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramdzs != null) {
        IBinder iBinder = paramdzs.asBinder();
      } else {
        paramdzs = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramdzs);
      this.a.transact(87, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(eak parameak) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parameak != null) {
        IBinder iBinder = parameak.asBinder();
      } else {
        parameak = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameak);
      this.a.transact(71, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(eak parameak, cwx paramcwx) {
    eak eak1 = null;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      IBinder iBinder;
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parameak != null) {
        iBinder = parameak.asBinder();
      } else {
        parameak = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameak);
      parameak = eak1;
      if (paramcwx != null)
        iBinder = paramcwx.asBinder(); 
      parcel1.writeStrongBinder(iBinder);
      this.a.transact(38, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(eav parameav) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parameav != null) {
        IBinder iBinder = parameav.asBinder();
      } else {
        parameav = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameav);
      this.a.transact(33, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(eay parameay) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parameay != null) {
        IBinder iBinder = parameay.asBinder();
      } else {
        parameay = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameay);
      this.a.transact(27, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ebb paramebb) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramebb != null) {
        IBinder iBinder = paramebb.asBinder();
      } else {
        paramebb = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramebb);
      this.a.transact(99, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ebe paramebe) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramebe != null) {
        IBinder iBinder = paramebe.asBinder();
      } else {
        paramebe = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramebe);
      this.a.transact(98, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ebh paramebh) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramebh != null) {
        IBinder iBinder = paramebh.asBinder();
      } else {
        paramebh = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramebh);
      this.a.transact(97, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ebk paramebk) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramebk != null) {
        IBinder iBinder = paramebk.asBinder();
      } else {
        paramebk = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramebk);
      this.a.transact(96, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ebn paramebn) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramebn != null) {
        IBinder iBinder = paramebn.asBinder();
      } else {
        paramebn = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramebn);
      this.a.transact(89, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ebq paramebq) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramebq != null) {
        IBinder iBinder = paramebq.asBinder();
      } else {
        paramebq = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramebq);
      this.a.transact(83, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ebt paramebt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramebt != null) {
        IBinder iBinder = paramebt.asBinder();
      } else {
        paramebt = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramebt);
      this.a.transact(45, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ebw paramebw) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramebw != null) {
        IBinder iBinder = paramebw.asBinder();
      } else {
        paramebw = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramebw);
      this.a.transact(32, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ebz paramebz) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramebz != null) {
        IBinder iBinder = paramebz.asBinder();
      } else {
        paramebz = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramebz);
      this.a.transact(86, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ecc paramecc) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramecc != null) {
        IBinder iBinder = paramecc.asBinder();
      } else {
        paramecc = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramecc);
      this.a.transact(84, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(eci parameci) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parameci != null) {
        IBinder iBinder = parameci.asBinder();
      } else {
        parameci = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameci);
      this.a.transact(28, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ecl paramecl) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramecl != null) {
        IBinder iBinder = paramecl.asBinder();
      } else {
        paramecl = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramecl);
      this.a.transact(42, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(eco parameco) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parameco != null) {
        IBinder iBinder = parameco.asBinder();
      } else {
        parameco = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameco);
      this.a.transact(29, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ecr paramecr) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramecr != null) {
        IBinder iBinder = paramecr.asBinder();
      } else {
        paramecr = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramecr);
      this.a.transact(53, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ecu paramecu) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramecu != null) {
        IBinder iBinder = paramecu.asBinder();
      } else {
        paramecu = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramecu);
      this.a.transact(30, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ecx paramecx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramecx != null) {
        IBinder iBinder = paramecx.asBinder();
      } else {
        paramecx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramecx);
      this.a.transact(31, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(eda parameda) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (parameda != null) {
        IBinder iBinder = parameda.asBinder();
      } else {
        parameda = null;
      } 
      parcel1.writeStrongBinder((IBinder)parameda);
      this.a.transact(37, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(edd paramedd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramedd != null) {
        IBinder iBinder = paramedd.asBinder();
      } else {
        paramedd = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramedd);
      this.a.transact(36, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(edg paramedg) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramedg != null) {
        IBinder iBinder = paramedg.asBinder();
      } else {
        paramedg = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramedg);
      this.a.transact(80, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(edj paramedj) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramedj != null) {
        IBinder iBinder = paramedj.asBinder();
      } else {
        paramedj = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramedj);
      this.a.transact(85, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      parcel1.writeString(paramString);
      this.a.transact(61, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(18, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean a(MapStyleOptions paramMapStyleOptions) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramMapStyleOptions != null) {
        parcel1.writeInt(1);
        paramMapStyleOptions.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(91, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i == 0)
        bool = false; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
  
  public float b() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readFloat();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void b(float paramFloat) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      parcel1.writeFloat(paramFloat);
      this.a.transact(93, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void b(Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(60, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        paramBundle.readFromParcel(parcel2); 
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void b(cwx paramcwx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean b(boolean paramBoolean) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBoolean) {
        i = 1;
      } else {
        i = 0;
      } 
      parcel1.writeInt(i);
      this.a.transact(20, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0) {
        paramBoolean = bool;
        return paramBoolean;
      } 
      paramBoolean = false;
      return paramBoolean;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public float c() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readFloat();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void c(Bundle paramBundle) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBundle != null) {
        parcel1.writeInt(1);
        paramBundle.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(81, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void c(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(22, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void d() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(8, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void d(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(41, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void e() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(14, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void e(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(51, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public int f() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(15, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean g() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(17, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean h() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(19, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean i() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(21, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public Location j() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(23, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (Location)Location.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public dzm k() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(25, parcel1, parcel2, 0);
      parcel2.readException();
      return dzn.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public dza l() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(26, parcel1, parcel2, 0);
      parcel2.readException();
      return dzb.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean m() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(40, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public ees n() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(44, parcel1, parcel2, 0);
      parcel2.readException();
      return eet.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void o() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(55, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void p() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(56, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void q() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(57, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void r() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(58, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean s() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(59, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void t() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(82, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void u() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(94, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void v() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(101, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void w() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IGoogleMapDelegate");
      this.a.transact(102, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dyq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */