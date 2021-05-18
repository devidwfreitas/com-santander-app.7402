import android.graphics.Bitmap;
import android.location.Location;
import android.os.RemoteException;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;

public final class dvb {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 2;
  
  public static final int d = 3;
  
  public static final int e = 4;
  
  private final dyo f;
  
  private dyk g;
  
  protected dvb(dyo paramdyo) {
    this.f = (dyo)csp.a(paramdyo);
  }
  
  public final CameraPosition a() {
    try {
      return this.f.a();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final edp a(CircleOptions paramCircleOptions) {
    try {
      return new edp(this.f.a(paramCircleOptions));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final edq a(GroundOverlayOptions paramGroundOverlayOptions) {
    try {
      eep eep = this.f.a(paramGroundOverlayOptions);
      return (eep != null) ? new edq(eep) : null;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final edv a(MarkerOptions paramMarkerOptions) {
    try {
      eey eey = this.f.a(paramMarkerOptions);
      return (eey != null) ? new edv(eey) : null;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final edw a(PolygonOptions paramPolygonOptions) {
    try {
      return new edw(this.f.a(paramPolygonOptions));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final edx a(PolylineOptions paramPolylineOptions) {
    try {
      return new edx(this.f.a(paramPolylineOptions));
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final eeb a(TileOverlayOptions paramTileOverlayOptions) {
    try {
      efe efe = this.f.a(paramTileOverlayOptions);
      return (efe != null) ? new eeb(efe) : null;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(float paramFloat) {
    try {
      this.f.a(paramFloat);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void a(int paramInt) {
    try {
      this.f.a(paramInt);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    try {
      this.f.a(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void a(LatLngBounds paramLatLngBounds) {
    try {
      this.f.a(paramLatLngBounds);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void a(duz paramduz) {
    try {
      this.f.a(paramduz.a());
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void a(duz paramduz, int paramInt, dwb paramdwb) {
    try {
      dwz dwz;
      dyo dyo1 = this.f;
      cwx cwx = paramduz.a();
      if (paramdwb == null) {
        paramduz = null;
      } else {
        dwz = new dwz(paramdwb);
      } 
      dyo1.a(cwx, paramInt, (eap)dwz);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void a(duz paramduz, dwb paramdwb) {
    try {
      dwz dwz;
      dyo dyo1 = this.f;
      cwx cwx = paramduz.a();
      if (paramdwb == null) {
        paramduz = null;
      } else {
        dwz = new dwz(paramdwb);
      } 
      dyo1.a(cwx, (eap)dwz);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void a(dwc paramdwc) {
    if (paramdwc == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((eav)new dvy(this, (dwc)remoteException));
  }
  
  @Deprecated
  public final void a(dwd paramdwd) {
    if (paramdwd == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((eay)new dvm(this, (dwd)remoteException));
  }
  
  public final void a(dwe paramdwe) {
    if (paramdwe == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ebb)new dvr(this, (dwe)remoteException));
  }
  
  public final void a(dwf paramdwf) {
    if (paramdwf == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ebe)new dvq(this, (dwf)remoteException));
  }
  
  public final void a(dwg paramdwg) {
    if (paramdwg == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ebh)new dvp(this, (dwg)remoteException));
  }
  
  public final void a(dwh paramdwh) {
    if (paramdwh == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ebk)new dvn(this, (dwh)remoteException));
  }
  
  public final void a(dwi paramdwi) {
    if (paramdwi == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ebn)new dvh(this, (dwi)remoteException));
  }
  
  public final void a(dwj paramdwj) {
    if (paramdwj == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ebq)new dve(this, (dwj)remoteException));
  }
  
  public final void a(dwk paramdwk) {
    if (paramdwk == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ebt)new dvc(this, (dwk)remoteException));
  }
  
  public final void a(dwl paramdwl) {
    if (paramdwl == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ebw)new dvv(this, (dwl)remoteException));
  }
  
  public final void a(dwm paramdwm) {
    if (paramdwm == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ebz)new dvx(this, (dwm)remoteException));
  }
  
  public final void a(dwn paramdwn) {
    if (paramdwn == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ecc)new dvw(this, (dwn)remoteException));
  }
  
  public final void a(dwo paramdwo) {
    if (paramdwo == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((eci)new dvs(this, (dwo)remoteException));
  }
  
  public void a(dwp paramdwp) {
    if (paramdwp == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ecl)new dvd(this, (dwp)remoteException));
  }
  
  public final void a(dwq paramdwq) {
    if (paramdwq == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((eco)new dvt(this, (dwq)remoteException));
  }
  
  public final void a(dwr paramdwr) {
    if (paramdwr == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ecu)new dvo(this, (dwr)remoteException));
  }
  
  public final void a(dws paramdws) {
    if (paramdws == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((ecx)new dvu(this, (dws)remoteException));
  }
  
  public final void a(dwt paramdwt) {
    if (paramdwt == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((eda)new dwa(this, (dwt)remoteException));
  }
  
  @Deprecated
  public final void a(dwu paramdwu) {
    if (paramdwu == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((edd)new dvz(this, (dwu)remoteException));
  }
  
  public final void a(dwv paramdwv) {
    if (paramdwv == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((edg)new dvl(this, (dwv)remoteException));
  }
  
  public final void a(dww paramdww) {
    if (paramdww == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((edj)new dvi(this, (dww)remoteException));
  }
  
  public final void a(dwx paramdwx) {
    if (paramdwx == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((dzs)new dvj(this, (dwx)remoteException));
  }
  
  public final void a(dwy paramdwy) {
    a(paramdwy, (Bitmap)null);
  }
  
  public final void a(dwy paramdwy, Bitmap paramBitmap) {
    if (paramBitmap != null) {
      cwx cwx = cxo.a(paramBitmap);
    } else {
      paramBitmap = null;
    } 
    cxo cxo = (cxo)paramBitmap;
    try {
      this.f.a((eak)new dvk(this, paramdwy), (cwx)cxo);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void a(dxa paramdxa) {
    if (paramdxa == null)
      try {
        this.f.a(null);
        return;
      } catch (RemoteException remoteException) {
        throw new edy(remoteException);
      }  
    this.f.a((dyr)new dvf(this, (dxa)remoteException));
  }
  
  public final void a(String paramString) {
    try {
      this.f.a(paramString);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void a(boolean paramBoolean) {
    try {
      this.f.a(paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public boolean a(MapStyleOptions paramMapStyleOptions) {
    try {
      return this.f.a(paramMapStyleOptions);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final float b() {
    try {
      return this.f.b();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void b(float paramFloat) {
    try {
      this.f.b(paramFloat);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void b(duz paramduz) {
    try {
      this.f.b(paramduz.a());
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final boolean b(boolean paramBoolean) {
    try {
      return this.f.b(paramBoolean);
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final float c() {
    try {
      return this.f.c();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void c(boolean paramBoolean) {
    try {
      this.f.d(paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void d() {
    try {
      this.f.d();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
  public final void d(boolean paramBoolean) {
    try {
      this.f.c(paramBoolean);
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final void e() {
    try {
      this.f.e();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public edr f() {
    try {
      ees ees = this.f.n();
      return (ees != null) ? new edr(ees) : null;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final int g() {
    try {
      return this.f.f();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final boolean h() {
    try {
      return this.f.g();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final boolean i() {
    try {
      return this.f.h();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final boolean j() {
    try {
      return this.f.m();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final boolean k() {
    try {
      return this.f.i();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  @Deprecated
  public final Location l() {
    try {
      return this.f.j();
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final dyk m() {
    try {
      if (this.g == null)
        this.g = new dyk(this.f.k()); 
      return this.g;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public final dxm n() {
    try {
      return new dxm(this.f.l());
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
  
  public void o() {
    try {
      this.f.u();
      return;
    } catch (RemoteException remoteException) {
      throw new edy(remoteException);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\dvb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */