import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;

public class bmz extends BroadcastReceiver {
  private static bmz a;
  
  private static final String b = "com.parse.bolts.measurement_event";
  
  private static final String c = "event_name";
  
  private static final String d = "event_args";
  
  private static final String e = "bf_";
  
  private Context f;
  
  private bmz(Context paramContext) {
    this.f = paramContext.getApplicationContext();
  }
  
  public static bmz a(Context paramContext) {
    if (a != null)
      return a; 
    a = new bmz(paramContext);
    a.a();
    return a;
  }
  
  private void a() {
    LocalBroadcastManager.getInstance(this.f).registerReceiver(this, new IntentFilter("com.parse.bolts.measurement_event"));
  }
  
  private void close() {
    LocalBroadcastManager.getInstance(this.f).unregisterReceiver(this);
  }
  
  protected void finalize() {
    try {
      close();
      return;
    } finally {
      super.finalize();
    } 
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    bla bla = bla.c(paramContext);
    String str = "bf_" + paramIntent.getStringExtra("event_name");
    Bundle bundle1 = paramIntent.getBundleExtra("event_args");
    Bundle bundle2 = new Bundle();
    for (String str1 : bundle1.keySet())
      bundle2.putString(str1.replaceAll("[^0-9a-zA-Z _-]", "-").replaceAll("^[ -]*", "").replaceAll("[ -]*$", ""), (String)bundle1.get(str1)); 
    bla.a(str, bundle2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */