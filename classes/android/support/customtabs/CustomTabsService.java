package android.support.customtabs;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.util.ArrayMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

public abstract class CustomTabsService extends Service {
  public static final String ACTION_CUSTOM_TABS_CONNECTION = "android.support.customtabs.action.CustomTabsService";
  
  public static final String KEY_URL = "android.support.customtabs.otherurls.URL";
  
  private ICustomTabsService$Stub mBinder = new CustomTabsService$1(this);
  
  private final Map<IBinder, IBinder.DeathRecipient> mDeathRecipientMap = (Map<IBinder, IBinder.DeathRecipient>)new ArrayMap();
  
  protected boolean cleanUpSession(CustomTabsSessionToken paramCustomTabsSessionToken) {
    try {
      synchronized (this.mDeathRecipientMap) {
        IBinder iBinder = paramCustomTabsSessionToken.getCallbackBinder();
        iBinder.unlinkToDeath(this.mDeathRecipientMap.get(iBinder), 0);
        this.mDeathRecipientMap.remove(iBinder);
        return true;
      } 
    } catch (NoSuchElementException noSuchElementException) {
      return false;
    } 
  }
  
  protected abstract Bundle extraCommand(String paramString, Bundle paramBundle);
  
  protected abstract boolean mayLaunchUrl(CustomTabsSessionToken paramCustomTabsSessionToken, Uri paramUri, Bundle paramBundle, List<Bundle> paramList);
  
  protected abstract boolean newSession(CustomTabsSessionToken paramCustomTabsSessionToken);
  
  public IBinder onBind(Intent paramIntent) {
    return (IBinder)this.mBinder;
  }
  
  protected abstract boolean updateVisuals(CustomTabsSessionToken paramCustomTabsSessionToken, Bundle paramBundle);
  
  protected abstract boolean warmup(long paramLong);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */