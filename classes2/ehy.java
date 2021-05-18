import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

@TargetApi(24)
class ehy extends BroadcastReceiver {
  private static AtomicReference<ehy> a = new AtomicReference<ehy>();
  
  private final Context b;
  
  public ehy(Context paramContext) {
    this.b = paramContext;
  }
  
  private static void b(Context paramContext) {
    if (a.get() == null) {
      ehy ehy1 = new ehy(paramContext);
      if (a.compareAndSet(null, ehy1))
        paramContext.registerReceiver(ehy1, new IntentFilter("android.intent.action.USER_UNLOCKED")); 
    } 
  }
  
  public void a() {
    this.b.unregisterReceiver(this);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    synchronized (ehu.g()) {
      Iterator<ehu> iterator = ehu.b.values().iterator();
      while (iterator.hasNext())
        ehu.a(iterator.next()); 
    } 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{android/content/Context}, name=paramContext} */
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */