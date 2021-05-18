import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.support.annotation.MainThread;

public final class dog {
  private final Handler a;
  
  private final Context b;
  
  private final doj c;
  
  public dog(doj paramdoj) {
    this.b = paramdoj.a();
    csp.a(this.b);
    this.c = paramdoj;
    this.a = new Handler();
  }
  
  public static boolean a(Context paramContext, boolean paramBoolean) {
    csp.a(paramContext);
    if (paramBoolean) {
      String str1 = "com.google.android.gms.measurement.PackageMeasurementService";
      return dou.a(paramContext, str1);
    } 
    String str = "com.google.android.gms.measurement.AppMeasurementService";
    return dou.a(paramContext, str);
  }
  
  private dkw c() {
    return dlv.a(this.b).f();
  }
  
  @MainThread
  public int a(Intent paramIntent, int paramInt1, int paramInt2) {
    dlv dlv = dlv.a(this.b);
    dkw dkw = dlv.f();
    if (paramIntent == null) {
      dkw.z().a("AppMeasurementService started with null intent");
      return 2;
    } 
    String str = paramIntent.getAction();
    dlv.d().V();
    dkw.D().a("Local AppMeasurementService called. startId, action", Integer.valueOf(paramInt2), str);
    if ("com.google.android.gms.measurement.UPLOAD".equals(str)) {
      dlv.h().a(new doh(this, dlv, paramInt2, dkw));
      return 2;
    } 
    return 2;
  }
  
  @MainThread
  public IBinder a(Intent paramIntent) {
    if (paramIntent == null) {
      c().x().a("onBind called with null intent");
      return null;
    } 
    String str = paramIntent.getAction();
    if ("com.google.android.gms.measurement.START".equals(str))
      return (IBinder)new dmb(dlv.a(this.b)); 
    c().z().a("onBind received unknown action", str);
    return null;
  }
  
  @MainThread
  public void a() {
    dlv dlv = dlv.a(this.b);
    dkw dkw = dlv.f();
    dlv.d().V();
    dkw.D().a("Local AppMeasurementService is starting up");
  }
  
  @MainThread
  public void b() {
    dlv dlv = dlv.a(this.b);
    dkw dkw = dlv.f();
    dlv.d().V();
    dkw.D().a("Local AppMeasurementService is shutting down");
  }
  
  @MainThread
  public boolean b(Intent paramIntent) {
    if (paramIntent == null) {
      c().x().a("onUnbind called with null intent");
      return true;
    } 
    String str = paramIntent.getAction();
    c().D().a("onUnbind called for intent. action", str);
    return true;
  }
  
  @MainThread
  public void c(Intent paramIntent) {
    if (paramIntent == null) {
      c().x().a("onRebind called with null intent");
      return;
    } 
    String str = paramIntent.getAction();
    c().D().a("onRebind called. action", str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */