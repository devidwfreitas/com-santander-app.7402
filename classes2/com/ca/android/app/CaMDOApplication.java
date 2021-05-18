package com.ca.android.app;

import android.app.Application;
import android.content.res.Configuration;
import com.ca.mdo.SDK;

public class CaMDOApplication extends Application {
  public void onConfigurationChanged(Configuration paramConfiguration) {
    SDK.getAgent(this).onConfigurationChangedOfApplication(paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public void onCreate() {
    super.onCreate();
    SDK.initialize(this);
    SDK.getAgent(this).onCreateOfApplication(this);
  }
  
  public void onLowMemory() {
    SDK.getAgent(this).onLowMemoryOfApplication();
    super.onLowMemory();
  }
  
  public void onTerminate() {
    SDK.getAgent(this).onTerminateOfApplication();
    super.onTerminate();
  }
  
  public void onTrimMemory(int paramInt) {
    SDK.getAgent(this).onTrimMemoryOfApplication(paramInt);
    super.onTrimMemory(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\CaMDOApplication.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */