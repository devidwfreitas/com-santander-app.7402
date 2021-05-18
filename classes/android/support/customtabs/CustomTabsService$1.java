package android.support.customtabs;

import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import java.util.List;

class CustomTabsService$1 extends ICustomTabsService$Stub {
  public Bundle extraCommand(String paramString, Bundle paramBundle) {
    return CustomTabsService.this.extraCommand(paramString, paramBundle);
  }
  
  public boolean mayLaunchUrl(ICustomTabsCallback paramICustomTabsCallback, Uri paramUri, Bundle paramBundle, List<Bundle> paramList) {
    return CustomTabsService.this.mayLaunchUrl(new CustomTabsSessionToken(paramICustomTabsCallback), paramUri, paramBundle, paramList);
  }
  
  public boolean newSession(ICustomTabsCallback paramICustomTabsCallback) {
    CustomTabsSessionToken customTabsSessionToken = new CustomTabsSessionToken(paramICustomTabsCallback);
    try {
      CustomTabsService$1$1 customTabsService$1$1 = new CustomTabsService$1$1(this, customTabsSessionToken);
      synchronized (CustomTabsService.access$000(CustomTabsService.this)) {
        paramICustomTabsCallback.asBinder().linkToDeath(customTabsService$1$1, 0);
        CustomTabsService.access$000(CustomTabsService.this).put(paramICustomTabsCallback.asBinder(), customTabsService$1$1);
        return CustomTabsService.this.newSession(customTabsSessionToken);
      } 
    } catch (RemoteException remoteException) {
      return false;
    } 
  }
  
  public boolean updateVisuals(ICustomTabsCallback paramICustomTabsCallback, Bundle paramBundle) {
    return CustomTabsService.this.updateVisuals(new CustomTabsSessionToken(paramICustomTabsCallback), paramBundle);
  }
  
  public boolean warmup(long paramLong) {
    return CustomTabsService.this.warmup(paramLong);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsService$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */