import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Size;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class dnk extends dmu {
  protected dnn a;
  
  private volatile egk b;
  
  private egk c;
  
  private long d;
  
  private final Map<Activity, dnn> e = (Map<Activity, dnn>)new ArrayMap();
  
  private final CopyOnWriteArrayList<egi> f = new CopyOnWriteArrayList<egi>();
  
  private boolean g;
  
  private egk h;
  
  private String i;
  
  public dnk(dlv paramdlv) {
    super(paramdlv);
  }
  
  static String a(String paramString) {
    String[] arrayOfString = paramString.split("\\.");
    if (arrayOfString.length == 0)
      return paramString.substring(0, 36); 
    String str = arrayOfString[arrayOfString.length - 1];
    paramString = str;
    return (str.length() > 36) ? str.substring(0, 36) : paramString;
  }
  
  @MainThread
  private void a(Activity paramActivity, dnn paramdnn, boolean paramBoolean) {
    egk egk1;
    boolean bool2 = true;
    boolean bool1 = true;
    if (this.b != null) {
      egk1 = this.b;
    } else if (this.c != null && Math.abs(m().b() - this.d) < 1000L) {
      egk1 = this.c;
    } else {
      egk1 = null;
    } 
    if (egk1 != null) {
      egk1 = new egk(egk1);
    } else {
      egk1 = null;
    } 
    this.g = true;
    try {
      Iterator<egi> iterator = this.f.iterator();
      while (true) {
        bool2 = bool1;
        if (iterator.hasNext()) {
          bool2 = bool1;
          egi egi = iterator.next();
          try {
            boolean bool = egi.a(egk1, paramdnn);
            bool1 = bool & bool1;
          } catch (Exception exception) {
            bool2 = bool1;
            u().x().a("onScreenChangeCallback threw exception", exception);
          } 
          continue;
        } 
        this.g = false;
        return;
      } 
    } catch (Exception exception) {
      u().x().a("onScreenChangeCallback loop threw exception", exception);
      this.g = false;
      bool1 = bool2;
      return;
    } finally {
      this.g = false;
    } 
  }
  
  @WorkerThread
  private void a(@NonNull dnn paramdnn) {
    f().a(m().b());
    if (s().a(paramdnn.a))
      paramdnn.a = false; 
  }
  
  public static void a(egk paramegk, Bundle paramBundle) {
    if (paramBundle != null && paramegk != null && !paramBundle.containsKey("_sc")) {
      if (paramegk.b != null)
        paramBundle.putString("_sn", paramegk.b); 
      paramBundle.putString("_sc", paramegk.c);
      paramBundle.putLong("_si", paramegk.d);
    } 
  }
  
  @MainThread
  dnn a(@NonNull Activity paramActivity) {
    csp.a(paramActivity);
    dnn dnn2 = this.e.get(paramActivity);
    dnn dnn1 = dnn2;
    if (dnn2 == null) {
      dnn1 = new dnn(null, a(paramActivity.getClass().getCanonicalName()), q().x());
      this.e.put(paramActivity, dnn1);
    } 
    return dnn1;
  }
  
  protected void a() {}
  
  @MainThread
  public void a(Activity paramActivity, Bundle paramBundle) {
    if (paramBundle != null) {
      paramBundle = paramBundle.getBundle("com.google.firebase.analytics.screen_service");
      if (paramBundle != null) {
        dnn dnn1 = a(paramActivity);
        dnn1.d = paramBundle.getLong("id");
        dnn1.b = paramBundle.getString("name");
        dnn1.c = paramBundle.getString("referrer_name");
        return;
      } 
    } 
  }
  
  @MainThread
  public void a(@NonNull Activity paramActivity, @Nullable @Size(max = 36L, min = 1L) String paramString1, @Nullable @Size(max = 36L, min = 1L) String paramString2) {
    int i = Build.VERSION.SDK_INT;
    if (paramActivity == null) {
      u().z().a("setCurrentScreen must be called with a non-null activity");
      return;
    } 
    if (!t().x()) {
      u().z().a("setCurrentScreen must be called from the main thread");
      return;
    } 
    if (this.g) {
      u().z().a("Cannot call setCurrentScreen from onScreenChangeCallback");
      return;
    } 
    if (this.b == null) {
      u().z().a("setCurrentScreen cannot be called while no activity active");
      return;
    } 
    if (this.e.get(paramActivity) == null) {
      u().z().a("setCurrentScreen must be called with an activity in the activity lifecycle");
      return;
    } 
    String str = paramString2;
    if (paramString2 == null)
      str = a(paramActivity.getClass().getCanonicalName()); 
    boolean bool = this.b.c.equals(str);
    if ((this.b.b == null && paramString1 == null) || (this.b.b != null && this.b.b.equals(paramString1))) {
      i = 1;
    } else {
      i = 0;
    } 
    if (bool && i != 0) {
      u().A().a("setCurrentScreen cannot be called with the same class and name");
      return;
    } 
    if (paramString1 != null && (paramString1.length() < 1 || paramString1.length() > w().B())) {
      u().z().a("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(paramString1.length()));
      return;
    } 
    if (str != null && (str.length() < 1 || str.length() > w().B())) {
      u().z().a("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
      return;
    } 
    dky dky = u().D();
    if (paramString1 == null) {
      paramString2 = "null";
    } else {
      paramString2 = paramString1;
    } 
    dky.a("Setting current screen to name, class", paramString2, str);
    dnn dnn1 = new dnn(paramString1, str, q().x());
    this.e.put(paramActivity, dnn1);
    a(paramActivity, dnn1, true);
  }
  
  @MainThread
  public void a(@NonNull egi paramegi) {
    c();
    if (paramegi == null) {
      u().z().a("Attempting to register null OnScreenChangeCallback");
      return;
    } 
    this.f.remove(paramegi);
    this.f.add(paramegi);
  }
  
  @WorkerThread
  public void a(String paramString, egk paramegk) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual e : ()V
    //   4: aload_0
    //   5: monitorenter
    //   6: aload_0
    //   7: getfield i : Ljava/lang/String;
    //   10: ifnull -> 28
    //   13: aload_0
    //   14: getfield i : Ljava/lang/String;
    //   17: aload_1
    //   18: invokevirtual equals : (Ljava/lang/Object;)Z
    //   21: ifne -> 28
    //   24: aload_2
    //   25: ifnull -> 38
    //   28: aload_0
    //   29: aload_1
    //   30: putfield i : Ljava/lang/String;
    //   33: aload_0
    //   34: aload_2
    //   35: putfield h : Legk;
    //   38: aload_0
    //   39: monitorexit
    //   40: return
    //   41: astore_1
    //   42: aload_0
    //   43: monitorexit
    //   44: aload_1
    //   45: athrow
    // Exception table:
    //   from	to	target	type
    //   6	24	41	finally
    //   28	38	41	finally
    //   38	40	41	finally
    //   42	44	41	finally
  }
  
  @MainThread
  public void b(Activity paramActivity) {
    a(paramActivity, a(paramActivity), false);
    f().a();
  }
  
  @MainThread
  public void b(Activity paramActivity, Bundle paramBundle) {
    if (paramBundle != null) {
      dnn dnn1 = this.e.get(paramActivity);
      if (dnn1 != null) {
        Bundle bundle = new Bundle();
        bundle.putLong("id", dnn1.d);
        bundle.putString("name", dnn1.b);
        bundle.putString("referrer_name", dnn1.c);
        paramBundle.putBundle("com.google.firebase.analytics.screen_service", bundle);
        return;
      } 
    } 
  }
  
  @MainThread
  public void b(@NonNull egi paramegi) {
    c();
    this.f.remove(paramegi);
  }
  
  @MainThread
  public void c(Activity paramActivity) {
    dnn dnn1 = a(paramActivity);
    this.c = this.b;
    this.d = m().b();
    this.b = null;
    t().a(new dnm(this, dnn1));
  }
  
  @MainThread
  public void d(Activity paramActivity) {
    this.e.remove(paramActivity);
  }
  
  @WorkerThread
  public dnn x() {
    R();
    e();
    return this.a;
  }
  
  public egk y() {
    c();
    egk egk1 = this.b;
    return (egk1 == null) ? null : new egk(egk1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dnk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */