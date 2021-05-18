package android.support.customtabs;

import android.os.Bundle;
import android.os.IInterface;

public interface ICustomTabsCallback extends IInterface {
  void extraCallback(String paramString, Bundle paramBundle);
  
  void onNavigationEvent(int paramInt, Bundle paramBundle);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\ICustomTabsCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */