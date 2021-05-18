import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.util.Log;
import android.view.SurfaceHolder;
import java.util.ArrayList;
import java.util.List;

public final class fej {
  private static final String a = fej.class.getSimpleName();
  
  private Camera b;
  
  private Camera.CameraInfo c;
  
  private fdy d;
  
  private eri e;
  
  private boolean f;
  
  private String g;
  
  private fel h = new fel();
  
  private feq i;
  
  private fdu j;
  
  private fdu k;
  
  private int l = -1;
  
  private Context m;
  
  private final fek n;
  
  public fej(Context paramContext) {
    this.m = paramContext;
    this.n = new fek(this);
  }
  
  private static List<fdu> a(Camera.Parameters paramParameters) {
    List list = paramParameters.getSupportedPreviewSizes();
    ArrayList<fdu> arrayList = new ArrayList();
    if (list == null) {
      Camera.Size size = paramParameters.getPreviewSize();
      if (size != null)
        arrayList.add(new fdu(size.width, size.height)); 
      return arrayList;
    } 
    for (Camera.Size size : list)
      arrayList.add(new fdu(size.width, size.height)); 
    return arrayList;
  }
  
  private void a(int paramInt) {
    this.b.setDisplayOrientation(paramInt);
  }
  
  private void b(boolean paramBoolean) {
    Camera.Parameters parameters = o();
    if (parameters == null) {
      Log.w(a, "Device error: no camera parameters are available. Proceeding without configuration.");
      return;
    } 
    Log.i(a, "Initial camera parameters: " + parameters.flatten());
    if (paramBoolean)
      Log.w(a, "In camera config safe mode -- most settings will not be honored"); 
    esf.a(parameters, this.h.h(), paramBoolean);
    if (!paramBoolean) {
      esf.a(parameters, false);
      if (this.h.b())
        esf.f(parameters); 
      if (this.h.c())
        esf.e(parameters); 
      if (this.h.e() && Build.VERSION.SDK_INT >= 15) {
        esf.d(parameters);
        esf.b(parameters);
        esf.c(parameters);
      } 
    } 
    List<fdu> list = a(parameters);
    if (list.size() == 0) {
      this.j = null;
    } else {
      this.j = this.i.a(list, e());
      parameters.setPreviewSize(this.j.a, this.j.b);
    } 
    if (Build.DEVICE.equals("glass-1"))
      esf.a(parameters); 
    Log.i(a, "Final camera parameters: " + parameters.flatten());
    this.b.setParameters(parameters);
  }
  
  private Camera.Parameters o() {
    Camera.Parameters parameters = this.b.getParameters();
    if (this.g == null) {
      this.g = parameters.flatten();
      return parameters;
    } 
    parameters.unflatten(this.g);
    return parameters;
  }
  
  private int p() {
    byte b = 0;
    int i = b;
    switch (this.i.a()) {
      default:
        i = b;
      case 0:
        if (this.c.facing == 1) {
          i = (360 - (i + this.c.orientation) % 360) % 360;
          Log.i(a, "Camera Display Orientation: " + i);
          return i;
        } 
        break;
      case 1:
        i = 90;
      case 2:
        i = 180;
      case 3:
        i = 270;
    } 
    i = (this.c.orientation - i + 360) % 360;
    Log.i(a, "Camera Display Orientation: " + i);
    return i;
  }
  
  private void q() {
    try {
      this.l = p();
      a(this.l);
    } catch (Exception exception) {
      Log.w(a, "Failed to set rotation.");
    } 
    try {
      b(false);
    } catch (Exception exception) {}
    Camera.Size size = this.b.getParameters().getPreviewSize();
    if (size == null) {
      this.k = this.j;
    } else {
      this.k = new fdu(size.width, size.height);
    } 
    this.n.a(this.k);
  }
  
  public void a() {
    this.b = esg.b(this.h.a());
    if (this.b == null)
      throw new RuntimeException("Failed to open camera"); 
    int i = esg.a(this.h.a());
    this.c = new Camera.CameraInfo();
    Camera.getCameraInfo(i, this.c);
  }
  
  public void a(SurfaceHolder paramSurfaceHolder) {
    a(new fen(paramSurfaceHolder));
  }
  
  public void a(fel paramfel) {
    this.h = paramfel;
  }
  
  public void a(fen paramfen) {
    paramfen.a(this.b);
  }
  
  public void a(feq paramfeq) {
    this.i = paramfeq;
  }
  
  public void a(fev paramfev) {
    Camera camera = this.b;
    if (camera != null && this.f) {
      this.n.a(paramfev);
      camera.setOneShotPreviewCallback(this.n);
    } 
  }
  
  public void a(boolean paramBoolean) {
    if (this.b != null && paramBoolean != l()) {
      if (this.d != null)
        this.d.b(); 
      Camera.Parameters parameters = this.b.getParameters();
      esf.a(parameters, paramBoolean);
      if (this.h.d())
        esf.b(parameters, paramBoolean); 
      this.b.setParameters(parameters);
      if (this.d != null)
        this.d.a(); 
    } 
  }
  
  public void b() {
    if (this.b == null)
      throw new RuntimeException("Camera not open"); 
    q();
  }
  
  public void c() {
    Camera camera = this.b;
    if (camera != null && !this.f) {
      camera.startPreview();
      this.f = true;
      this.d = new fdy(this.b, this.h);
      this.e = new eri(this.m, this, this.h);
      this.e.a();
    } 
  }
  
  public void close() {
    if (this.b != null) {
      this.b.release();
      this.b = null;
    } 
  }
  
  public void d() {
    if (this.d != null) {
      this.d.b();
      this.d = null;
    } 
    if (this.e != null) {
      this.e.b();
      this.e = null;
    } 
    if (this.b != null && this.f) {
      this.b.stopPreview();
      this.n.a((fev)null);
      this.f = false;
    } 
  }
  
  public boolean e() {
    if (this.l == -1)
      throw new IllegalStateException("Rotation not calculated yet. Call configure() first."); 
    return (this.l % 180 != 0);
  }
  
  public int f() {
    return this.l;
  }
  
  public boolean g() {
    return (this.b != null);
  }
  
  public fdu h() {
    return this.k;
  }
  
  public fdu i() {
    return (this.k == null) ? null : (e() ? this.k.a() : this.k);
  }
  
  public fel j() {
    return this.h;
  }
  
  public feq k() {
    return this.i;
  }
  
  public boolean l() {
    boolean bool = false;
    Camera.Parameters parameters = this.b.getParameters();
    null = bool;
    if (parameters != null) {
      String str = parameters.getFlashMode();
      null = bool;
      if (str != null) {
        if (!"on".equals(str)) {
          null = bool;
          return "torch".equals(str) ? true : null;
        } 
      } else {
        return null;
      } 
    } else {
      return null;
    } 
    return true;
  }
  
  public Camera m() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fej.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */