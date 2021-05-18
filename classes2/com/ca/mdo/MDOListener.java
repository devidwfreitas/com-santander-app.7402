package com.ca.mdo;

import android.content.Context;
import android.content.IntentFilter;

class MDOListener implements AppMode.Listener {
  protected static void registerNetworkChangeReceiver(Context paramContext) {
    try {
      IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
      paramContext.registerReceiver(CAMobileDevOps.networkChangeReceiver, intentFilter);
      return;
    } catch (Exception exception) {
      CALog.e("registerNetworkReceiver caught exception.", exception);
      return;
    } 
  }
  
  protected static void unRegisterNetworkChangeReceiver(Context paramContext) {
    try {
      if (CAMobileDevOps.networkChangeReceiver != null)
        paramContext.unregisterReceiver(CAMobileDevOps.networkChangeReceiver); 
      return;
    } catch (Exception exception) {
      CALog.e("unRegisterNetworkReceiver caught exception.", exception);
      return;
    } 
  }
  
  public void onBecameBackground(Context paramContext) {
    unRegisterNetworkChangeReceiver(paramContext);
    AppDeviceData.unRegisterBatteryReceiver();
  }
  
  public void onBecameForeground(Context paramContext) {
    registerNetworkChangeReceiver(paramContext);
    AppDeviceData.registerBatteryReceiver();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\MDOListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */