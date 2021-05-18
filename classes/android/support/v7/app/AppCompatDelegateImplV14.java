package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.support.annotation.VisibleForTesting;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Window;

@TargetApi(14)
@RequiresApi(14)
class AppCompatDelegateImplV14 extends AppCompatDelegateImplV11 {
  private static final String KEY_LOCAL_NIGHT_MODE = "appcompat:local_night_mode";
  
  private boolean mApplyDayNightCalled;
  
  private AppCompatDelegateImplV14$AutoNightModeManager mAutoNightModeManager;
  
  private boolean mHandleNativeActionModes = true;
  
  private int mLocalNightMode = -100;
  
  AppCompatDelegateImplV14(Context paramContext, Window paramWindow, AppCompatCallback paramAppCompatCallback) {
    super(paramContext, paramWindow, paramAppCompatCallback);
  }
  
  private void ensureAutoNightModeManager() {
    if (this.mAutoNightModeManager == null)
      this.mAutoNightModeManager = new AppCompatDelegateImplV14$AutoNightModeManager(this, TwilightManager.getInstance(this.mContext)); 
  }
  
  private int getNightMode() {
    return (this.mLocalNightMode != -100) ? this.mLocalNightMode : getDefaultNightMode();
  }
  
  private boolean shouldRecreateOnNightModeChange() {
    if (this.mApplyDayNightCalled && this.mContext instanceof Activity) {
      PackageManager packageManager = this.mContext.getPackageManager();
      try {
        int i = (packageManager.getActivityInfo(new ComponentName(this.mContext, this.mContext.getClass()), 0)).configChanges;
        return ((i & 0x200) == 0);
      } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
        Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", (Throwable)nameNotFoundException);
        return true;
      } 
    } 
    return false;
  }
  
  private boolean updateForNightMode(int paramInt) {
    Resources resources = this.mContext.getResources();
    Configuration configuration = resources.getConfiguration();
    int i = configuration.uiMode;
    if (paramInt == 2) {
      paramInt = 32;
    } else {
      paramInt = 16;
    } 
    if ((i & 0x30) != paramInt) {
      if (shouldRecreateOnNightModeChange()) {
        ((Activity)this.mContext).recreate();
        return true;
      } 
      configuration = new Configuration(configuration);
      DisplayMetrics displayMetrics = resources.getDisplayMetrics();
      configuration.uiMode = paramInt | configuration.uiMode & 0xFFFFFFCF;
      resources.updateConfiguration(configuration, displayMetrics);
      ResourcesFlusher.flush(resources);
      return true;
    } 
    return false;
  }
  
  public boolean applyDayNight() {
    boolean bool = false;
    int i = getNightMode();
    int j = mapNightMode(i);
    if (j != -1)
      bool = updateForNightMode(j); 
    if (i == 0) {
      ensureAutoNightModeManager();
      this.mAutoNightModeManager.setup();
    } 
    this.mApplyDayNightCalled = true;
    return bool;
  }
  
  @VisibleForTesting
  final AppCompatDelegateImplV14$AutoNightModeManager getAutoNightModeManager() {
    ensureAutoNightModeManager();
    return this.mAutoNightModeManager;
  }
  
  public boolean isHandleNativeActionModesEnabled() {
    return this.mHandleNativeActionModes;
  }
  
  int mapNightMode(int paramInt) {
    switch (paramInt) {
      default:
        return paramInt;
      case 0:
        ensureAutoNightModeManager();
        return this.mAutoNightModeManager.getApplyableNightMode();
      case -100:
        break;
    } 
    return -1;
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    if (paramBundle != null && this.mLocalNightMode == -100)
      this.mLocalNightMode = paramBundle.getInt("appcompat:local_night_mode", -100); 
  }
  
  public void onDestroy() {
    super.onDestroy();
    if (this.mAutoNightModeManager != null)
      this.mAutoNightModeManager.cleanup(); 
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    if (this.mLocalNightMode != -100)
      paramBundle.putInt("appcompat:local_night_mode", this.mLocalNightMode); 
  }
  
  public void onStart() {
    super.onStart();
    applyDayNight();
  }
  
  public void onStop() {
    super.onStop();
    if (this.mAutoNightModeManager != null)
      this.mAutoNightModeManager.cleanup(); 
  }
  
  public void setHandleNativeActionModesEnabled(boolean paramBoolean) {
    this.mHandleNativeActionModes = paramBoolean;
  }
  
  public void setLocalNightMode(int paramInt) {
    switch (paramInt) {
      default:
        Log.i("AppCompatDelegate", "setLocalNightMode() called with an unknown mode");
        return;
      case -1:
      case 0:
      case 1:
      case 2:
        break;
    } 
    if (this.mLocalNightMode != paramInt) {
      this.mLocalNightMode = paramInt;
      if (this.mApplyDayNightCalled) {
        applyDayNight();
        return;
      } 
    } 
  }
  
  Window.Callback wrapWindowCallback(Window.Callback paramCallback) {
    return (Window.Callback)new AppCompatDelegateImplV14$AppCompatWindowCallbackV14(this, paramCallback);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV14.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */