package android.support.customtabs;

import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import java.util.List;

public interface ICustomTabsService extends IInterface {
  Bundle extraCommand(String paramString, Bundle paramBundle);
  
  boolean mayLaunchUrl(ICustomTabsCallback paramICustomTabsCallback, Uri paramUri, Bundle paramBundle, List<Bundle> paramList);
  
  boolean newSession(ICustomTabsCallback paramICustomTabsCallback);
  
  boolean updateVisuals(ICustomTabsCallback paramICustomTabsCallback, Bundle paramBundle);
  
  boolean warmup(long paramLong);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\ICustomTabsService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */