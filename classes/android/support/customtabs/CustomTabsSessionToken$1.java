package android.support.customtabs;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;

class CustomTabsSessionToken$1 extends CustomTabsCallback {
  public void onNavigationEvent(int paramInt, Bundle paramBundle) {
    try {
      CustomTabsSessionToken.access$000(CustomTabsSessionToken.this).onNavigationEvent(paramInt, paramBundle);
      return;
    } catch (RemoteException remoteException) {
      Log.e("CustomTabsSessionToken", "RemoteException during ICustomTabsCallback transaction");
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsSessionToken$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */