import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

public final class dak implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {
  private static final dak a = new dak();
  
  private final AtomicBoolean b = new AtomicBoolean();
  
  private final AtomicBoolean c = new AtomicBoolean();
  
  private final ArrayList<dal> d = new ArrayList<dal>();
  
  private boolean e = false;
  
  public static dak a() {
    return a;
  }
  
  public static void a(Application paramApplication) {
    synchronized (a) {
      if (!a.e) {
        paramApplication.registerActivityLifecycleCallbacks(a);
        paramApplication.registerComponentCallbacks((ComponentCallbacks)a);
        a.e = true;
      } 
      return;
    } 
  }
  
  private void b(boolean paramBoolean) {
    synchronized (a) {
      Iterator<dal> iterator = this.d.iterator();
      while (iterator.hasNext())
        ((dal)iterator.next()).a(paramBoolean); 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
  }
  
  public void a(dal paramdal) {
    synchronized (a) {
      this.d.add(paramdal);
      return;
    } 
  }
  
  @TargetApi(16)
  public boolean a(boolean paramBoolean) {
    if (!this.c.get())
      if (cwd.e()) {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        if (!this.c.getAndSet(true) && runningAppProcessInfo.importance > 100)
          this.b.set(true); 
      } else {
        return paramBoolean;
      }  
    return b();
  }
  
  public boolean b() {
    return this.b.get();
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {
    boolean bool = this.b.compareAndSet(true, false);
    this.c.set(true);
    if (bool)
      b(false); 
  }
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {}
  
  public void onActivityResumed(Activity paramActivity) {
    boolean bool = this.b.compareAndSet(true, false);
    this.c.set(true);
    if (bool)
      b(false); 
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory() {}
  
  public void onTrimMemory(int paramInt) {
    if (paramInt == 20 && this.b.compareAndSet(false, true)) {
      this.c.set(true);
      b(true);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */