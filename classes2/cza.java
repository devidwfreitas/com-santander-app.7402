import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.util.Log;
import com.google.android.gms.gcm.PendingCallback;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class cza extends Service {
  public static final String a = "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE";
  
  public static final String b = "com.google.android.gms.gcm.ACTION_TASK_READY";
  
  public static final String c = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE";
  
  private final Set<String> d = new HashSet<String>();
  
  private int e;
  
  private ExecutorService f;
  
  private void a(int paramInt) {
    synchronized (this.d) {
      this.e = paramInt;
      if (this.d.size() == 0)
        stopSelf(this.e); 
      return;
    } 
  }
  
  private void a(String paramString) {
    synchronized (this.d) {
      this.d.remove(paramString);
      if (this.d.size() == 0)
        stopSelf(this.e); 
      return;
    } 
  }
  
  public abstract int a(czl paramczl);
  
  protected ExecutorService a() {
    return Executors.newFixedThreadPool(2, new czb(this));
  }
  
  public void b() {}
  
  public IBinder onBind(Intent paramIntent) {
    return null;
  }
  
  @CallSuper
  public void onCreate() {
    super.onCreate();
    this.f = a();
  }
  
  @CallSuper
  public void onDestroy() {
    super.onDestroy();
    List<Runnable> list = this.f.shutdownNow();
    if (!list.isEmpty()) {
      int i = list.size();
      Log.e("GcmTaskService", (new StringBuilder(79)).append("Shutting down, but not all tasks are finished executing. Remaining: ").append(i).toString());
    } 
  }
  
  @CallSuper
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    if (paramIntent == null) {
      a(paramInt2);
      return 2;
    } 
    try {
      paramIntent.setExtrasClassLoader(PendingCallback.class.getClassLoader());
      String str = paramIntent.getAction();
      if ("com.google.android.gms.gcm.ACTION_TASK_READY".equals(str)) {
        Set<String> set;
        czc czc;
        str = paramIntent.getStringExtra("tag");
        Parcelable parcelable = paramIntent.getParcelableExtra("callback");
        Bundle bundle = (Bundle)paramIntent.getParcelableExtra("extras");
        ArrayList<Uri> arrayList = paramIntent.getParcelableArrayListExtra("triggered_uris");
        if (parcelable == null || !(parcelable instanceof PendingCallback)) {
          String str1 = String.valueOf(getPackageName());
          Log.e("GcmTaskService", (new StringBuilder(String.valueOf(str1).length() + 47 + String.valueOf(str).length())).append(str1).append(" ").append(str).append(": Could not process request, invalid callback.").toString());
          return 2;
        } 
        synchronized (this.d) {
          String str1;
          if (!this.d.add(str)) {
            str1 = String.valueOf(getPackageName());
            Log.w("GcmTaskService", (new StringBuilder(String.valueOf(str1).length() + 44 + String.valueOf(str).length())).append(str1).append(" ").append(str).append(": Task already running, won't start another").toString());
            return 2;
          } 
          czc = new czc(this, str, ((PendingCallback)str1).a(), bundle, arrayList);
          this.f.execute(czc);
          return 2;
        } 
      } 
    } finally {
      a(paramInt2);
    } 
    Log.e("GcmTaskService", (new StringBuilder(String.valueOf(SYNTHETIC_LOCAL_VARIABLE_4).length() + 37)).append("Unknown action received ").append((String)SYNTHETIC_LOCAL_VARIABLE_4).append(", terminating").toString());
    a(paramInt2);
    return 2;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cza.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */