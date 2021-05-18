import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.v4.util.ArrayMap;
import com.ca.android.app.CaMDOFragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

public final class ddl extends CaMDOFragment implements ddk {
  private static WeakHashMap<Activity, WeakReference<ddl>> a = new WeakHashMap<Activity, WeakReference<ddl>>();
  
  private Map<String, ddj> b = (Map<String, ddj>)new ArrayMap();
  
  private int c = 0;
  
  private Bundle d;
  
  public static ddl a(Activity paramActivity) {
    WeakReference<ddl> weakReference = a.get(paramActivity);
    if (weakReference != null) {
      ddl ddl1 = weakReference.get();
      if (ddl1 != null)
        return ddl1; 
    } 
    try {
      ddl ddl2 = (ddl)paramActivity.getFragmentManager().findFragmentByTag("LifecycleFragmentImpl");
      if (ddl2 != null) {
        ddl ddl3 = ddl2;
        if (ddl2.isRemoving()) {
          ddl3 = new ddl();
          paramActivity.getFragmentManager().beginTransaction().add((Fragment)ddl3, "LifecycleFragmentImpl").commitAllowingStateLoss();
          a.put(paramActivity, new WeakReference<ddl>(ddl3));
          return ddl3;
        } 
        a.put(paramActivity, new WeakReference<ddl>(ddl3));
        return ddl3;
      } 
      ddl ddl1 = new ddl();
      paramActivity.getFragmentManager().beginTransaction().add((Fragment)ddl1, "LifecycleFragmentImpl").commitAllowingStateLoss();
      a.put(paramActivity, new WeakReference<ddl>(ddl1));
      return ddl1;
    } catch (ClassCastException classCastException) {
      throw new IllegalStateException("Fragment with tag LifecycleFragmentImpl is not a LifecycleFragmentImpl", classCastException);
    } 
  }
  
  private void b(String paramString, @NonNull ddj paramddj) {
    if (this.c > 0)
      (new Handler(Looper.getMainLooper())).post(new ddm(this, paramddj, paramString)); 
  }
  
  public Activity a() {
    return getActivity();
  }
  
  public <T extends ddj> T a(String paramString, Class<T> paramClass) {
    return paramClass.cast(this.b.get(paramString));
  }
  
  public void a(String paramString, @NonNull ddj paramddj) {
    if (!this.b.containsKey(paramString)) {
      this.b.put(paramString, paramddj);
      b(paramString, paramddj);
      return;
    } 
    throw new IllegalArgumentException((new StringBuilder(String.valueOf(paramString).length() + 59)).append("LifecycleCallback with tag ").append(paramString).append(" already added to this fragment.").toString());
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString) {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    Iterator<ddj> iterator = this.b.values().iterator();
    while (iterator.hasNext())
      ((ddj)iterator.next()).a(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString); 
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Iterator<ddj> iterator = this.b.values().iterator();
    while (iterator.hasNext())
      ((ddj)iterator.next()).a(paramInt1, paramInt2, paramIntent); 
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.c = 1;
    this.d = paramBundle;
    for (Map.Entry<String, ddj> entry : this.b.entrySet()) {
      ddj ddj = (ddj)entry.getValue();
      if (paramBundle != null) {
        Bundle bundle = paramBundle.getBundle((String)entry.getKey());
      } else {
        entry = null;
      } 
      ddj.a((Bundle)entry);
    } 
  }
  
  public void onDestroy() {
    super.onDestroy();
    this.c = 4;
    Iterator<ddj> iterator = this.b.values().iterator();
    while (iterator.hasNext())
      ((ddj)iterator.next()).g(); 
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    if (paramBundle != null) {
      Iterator<Map.Entry> iterator = this.b.entrySet().iterator();
      while (true) {
        if (iterator.hasNext()) {
          Map.Entry entry = iterator.next();
          Bundle bundle = new Bundle();
          ((ddj)entry.getValue()).b(bundle);
          paramBundle.putBundle((String)entry.getKey(), bundle);
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void onStart() {
    super.onStart();
    this.c = 2;
    Iterator<ddj> iterator = this.b.values().iterator();
    while (iterator.hasNext())
      ((ddj)iterator.next()).a(); 
  }
  
  public void onStop() {
    super.onStop();
    this.c = 3;
    Iterator<ddj> iterator = this.b.values().iterator();
    while (iterator.hasNext())
      ((ddj)iterator.next()).b(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ddl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */