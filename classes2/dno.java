import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.RemoteException;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzatg;
import com.google.android.gms.internal.zzatq;
import com.google.android.gms.internal.zzauq;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class dno extends dmu {
  private final dob a;
  
  private dkp b;
  
  private Boolean c;
  
  private final dkf d;
  
  private final dop e;
  
  private final List<Runnable> f = new ArrayList<Runnable>();
  
  private final dkf g;
  
  protected dno(dlv paramdlv) {
    super(paramdlv);
    this.e = new dop(paramdlv.t());
    this.a = new dob(this);
    this.d = new dnp(this, paramdlv);
    this.g = new dnw(this, paramdlv);
  }
  
  @WorkerThread
  private void D() {
    e();
    this.e.a();
    this.d.a(w().R());
  }
  
  private boolean E() {
    w().V();
    List list = n().getPackageManager().queryIntentServices((new Intent()).setClassName(n(), "com.google.android.gms.measurement.AppMeasurementService"), 65536);
    return (list != null && list.size() > 0);
  }
  
  @WorkerThread
  private void F() {
    e();
    if (!x())
      return; 
    u().D().a("Inactivity, disconnecting from the service");
    C();
  }
  
  @WorkerThread
  private void G() {
    e();
    A();
  }
  
  @WorkerThread
  private void H() {
    e();
    u().D().a("Processing queued up service tasks", Integer.valueOf(this.f.size()));
    for (Runnable runnable : this.f)
      t().a(runnable); 
    this.f.clear();
    this.g.c();
  }
  
  @WorkerThread
  private void a(ComponentName paramComponentName) {
    e();
    if (this.b != null) {
      this.b = null;
      u().D().a("Disconnected from device MeasurementService", paramComponentName);
      G();
    } 
  }
  
  @WorkerThread
  private void a(Runnable paramRunnable) {
    e();
    if (x()) {
      paramRunnable.run();
      return;
    } 
    if (this.f.size() >= w().ad()) {
      u().x().a("Discarding data. Max runnable queue size reached");
      return;
    } 
    this.f.add(paramRunnable);
    this.g.a(60000L);
    A();
  }
  
  @WorkerThread
  void A() {
    e();
    R();
    if (x())
      return; 
    if (this.c == null) {
      this.c = v().C();
      if (this.c == null) {
        u().D().a("State of service unknown");
        this.c = Boolean.valueOf(B());
        v().a(this.c.booleanValue());
      } 
    } 
    if (this.c.booleanValue()) {
      u().D().a("Using measurement service");
      this.a.a();
      return;
    } 
    if (E()) {
      u().D().a("Using local app measurement service");
      Intent intent = new Intent("com.google.android.gms.measurement.START");
      Context context = n();
      w().V();
      intent.setComponent(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"));
      this.a.a(intent);
      return;
    } 
    u().x().a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
  }
  
  @WorkerThread
  protected boolean B() {
    e();
    R();
    w().V();
    u().D().a("Checking service availability");
    switch (cwn.b().a(n())) {
      default:
        return false;
      case 0:
        u().D().a("Service available");
        return true;
      case 1:
        u().D().a("Service missing");
        return false;
      case 18:
        u().z().a("Service updating");
        return true;
      case 2:
        u().C().a("Service container out of date");
        return true;
      case 3:
        u().z().a("Service disabled");
        return false;
      case 9:
        break;
    } 
    u().z().a("Service invalid");
    return false;
  }
  
  @WorkerThread
  public void C() {
    e();
    R();
    try {
      cvf.a().a(n(), this.a);
    } catch (IllegalStateException illegalStateException) {
    
    } catch (IllegalArgumentException illegalArgumentException) {}
    this.b = null;
  }
  
  protected void a() {}
  
  @WorkerThread
  protected void a(zzatg paramzzatg) {
    boolean bool;
    csp.a(paramzzatg);
    e();
    R();
    w().V();
    if (o().a(paramzzatg)) {
      bool = true;
    } else {
      bool = false;
    } 
    a(new dnz(this, true, bool, new zzatg(paramzzatg), paramzzatg));
  }
  
  @WorkerThread
  protected void a(zzatq paramzzatq, String paramString) {
    boolean bool;
    csp.a(paramzzatq);
    e();
    R();
    int i = Build.VERSION.SDK_INT;
    w().V();
    if (o().a(paramzzatq)) {
      bool = true;
    } else {
      bool = false;
    } 
    a(new dny(this, true, bool, paramzzatq, paramString));
  }
  
  @WorkerThread
  protected void a(zzauq paramzzauq) {
    boolean bool;
    e();
    R();
    int i = Build.VERSION.SDK_INT;
    w().V();
    if (o().a(paramzzauq)) {
      bool = true;
    } else {
      bool = false;
    } 
    a(new dnr(this, bool, paramzzauq));
  }
  
  @WorkerThread
  protected void a(dkp paramdkp) {
    e();
    csp.a(paramdkp);
    this.b = paramdkp;
    D();
    H();
  }
  
  @WorkerThread
  void a(dkp paramdkp, zza paramzza) {
    e();
    c();
    R();
    int i = Build.VERSION.SDK_INT;
    w().V();
    ArrayList<zza> arrayList = new ArrayList();
    w().ah();
    int j = 0;
    i = 100;
    while (true) {
      if (j < 1001 && i == 100) {
        List<zza> list = o().a(100);
        if (list != null) {
          arrayList.addAll(list);
          i = list.size();
        } else {
          i = 0;
        } 
        if (paramzza != null && i < 100)
          arrayList.add(paramzza); 
        for (zza zza1 : arrayList) {
          if (zza1 instanceof zzatq) {
            try {
              paramdkp.a((zzatq)zza1, i().a(u().E()));
            } catch (RemoteException null) {
              u().x().a("Failed to send event to the service", remoteException);
            } 
            continue;
          } 
          if (remoteException instanceof zzauq) {
            try {
              paramdkp.a((zzauq)remoteException, i().a(u().E()));
            } catch (RemoteException remoteException) {
              u().x().a("Failed to send attribute to the service", remoteException);
            } 
            continue;
          } 
          if (remoteException instanceof zzatg) {
            try {
              paramdkp.a((zzatg)remoteException, i().a(u().E()));
            } catch (RemoteException remoteException1) {
              u().x().a("Failed to send conditional property to the service", remoteException1);
            } 
            continue;
          } 
          u().x().a("Discarding data. Unrecognized parcel type.");
        } 
        j++;
        continue;
      } 
      return;
    } 
  }
  
  @WorkerThread
  protected void a(egk paramegk) {
    e();
    R();
    a(new dnv(this, paramegk));
  }
  
  @WorkerThread
  public void a(AtomicReference<String> paramAtomicReference) {
    e();
    R();
    a(new dnt(this, paramAtomicReference));
  }
  
  @WorkerThread
  protected void a(AtomicReference<List<zzatg>> paramAtomicReference, String paramString1, String paramString2, String paramString3) {
    e();
    R();
    a(new doa(this, paramAtomicReference, paramString1, paramString2, paramString3));
  }
  
  @WorkerThread
  protected void a(AtomicReference<List<zzauq>> paramAtomicReference, String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    e();
    R();
    a(new dnq(this, paramAtomicReference, paramString1, paramString2, paramString3, paramBoolean));
  }
  
  @WorkerThread
  protected void a(AtomicReference<List<zzauq>> paramAtomicReference, boolean paramBoolean) {
    e();
    R();
    a(new dns(this, paramAtomicReference, paramBoolean));
  }
  
  @WorkerThread
  public boolean x() {
    e();
    R();
    return (this.b != null);
  }
  
  @WorkerThread
  protected void y() {
    e();
    R();
    a(new dnx(this));
  }
  
  @WorkerThread
  protected void z() {
    e();
    R();
    a(new dnu(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dno.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */