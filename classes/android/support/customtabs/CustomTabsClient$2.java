package android.support.customtabs;

import android.os.Bundle;

class CustomTabsClient$2 extends ICustomTabsCallback$Stub {
  public void extraCallback(String paramString, Bundle paramBundle) {
    if (callback != null)
      callback.extraCallback(paramString, paramBundle); 
  }
  
  public void onNavigationEvent(int paramInt, Bundle paramBundle) {
    if (callback != null)
      callback.onNavigationEvent(paramInt, paramBundle); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsClient$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */