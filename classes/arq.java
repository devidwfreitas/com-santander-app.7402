import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class arq extends BroadcastReceiver {
  protected List<arr> a = new ArrayList<arr>();
  
  protected Boolean b = null;
  
  private void a() {
    Iterator<arr> iterator = this.a.iterator();
    while (iterator.hasNext())
      b(iterator.next()); 
  }
  
  private void b(arr paramarr) {
    if (this.b == null || paramarr == null)
      return; 
    if (this.b.booleanValue()) {
      paramarr.g();
      return;
    } 
    paramarr.h();
  }
  
  public void a(arr paramarr) {
    this.a.add(paramarr);
    b(paramarr);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    if (paramIntent == null || paramIntent.getExtras() == null)
      return; 
    NetworkInfo networkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (networkInfo != null && networkInfo.getState() == NetworkInfo.State.CONNECTED) {
      this.b = Boolean.valueOf(true);
    } else if (paramIntent.getBooleanExtra("noConnectivity", Boolean.FALSE.booleanValue())) {
      this.b = Boolean.valueOf(false);
    } 
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\arq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */