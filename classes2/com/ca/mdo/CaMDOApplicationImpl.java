package com.ca.mdo;

import android.app.Application;
import android.content.res.Configuration;

public class CaMDOApplicationImpl {
  static void onConfigurationChanged(Configuration paramConfiguration) {
    CALog.v("------------- Application configuration changed  -------------");
  }
  
  static void onCreate(Application paramApplication) {
    CALog.v("------------- Creating Application -------------");
  }
  
  static void onLowMemory() {
    CALog.v("-------------  Application on Low Memory -------------");
  }
  
  static void onTerminate() {
    CALog.v("------------- Terminating Application -------------");
  }
  
  static void onTrimMemory(int paramInt) {
    CALog.v("------------- Application on Trim Memory  -------------");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\CaMDOApplicationImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */