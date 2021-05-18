package android.support.customtabs;

import android.content.ComponentName;
import android.content.Context;

final class CustomTabsClient$1 extends CustomTabsServiceConnection {
  public final void onCustomTabsServiceConnected(ComponentName paramComponentName, CustomTabsClient paramCustomTabsClient) {
    paramCustomTabsClient.warmup(0L);
    applicationContext.unbindService(this);
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsClient$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */