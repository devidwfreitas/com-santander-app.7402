package android.support.v7.app;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;

@VisibleForTesting
final class AppCompatDelegateImplV14$AutoNightModeManager {
  private BroadcastReceiver mAutoTimeChangeReceiver;
  
  private IntentFilter mAutoTimeChangeReceiverFilter;
  
  private boolean mIsNight;
  
  private TwilightManager mTwilightManager;
  
  AppCompatDelegateImplV14$AutoNightModeManager(@NonNull TwilightManager paramTwilightManager) {
    this.mTwilightManager = paramTwilightManager;
    this.mIsNight = paramTwilightManager.isNight();
  }
  
  final void cleanup() {
    if (this.mAutoTimeChangeReceiver != null) {
      AppCompatDelegateImplV14.this.mContext.unregisterReceiver(this.mAutoTimeChangeReceiver);
      this.mAutoTimeChangeReceiver = null;
    } 
  }
  
  final void dispatchTimeChanged() {
    boolean bool = this.mTwilightManager.isNight();
    if (bool != this.mIsNight) {
      this.mIsNight = bool;
      AppCompatDelegateImplV14.this.applyDayNight();
    } 
  }
  
  final int getApplyableNightMode() {
    this.mIsNight = this.mTwilightManager.isNight();
    return this.mIsNight ? 2 : 1;
  }
  
  final void setup() {
    cleanup();
    if (this.mAutoTimeChangeReceiver == null)
      this.mAutoTimeChangeReceiver = new AppCompatDelegateImplV14$AutoNightModeManager$1(this); 
    if (this.mAutoTimeChangeReceiverFilter == null) {
      this.mAutoTimeChangeReceiverFilter = new IntentFilter();
      this.mAutoTimeChangeReceiverFilter.addAction("android.intent.action.TIME_SET");
      this.mAutoTimeChangeReceiverFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
      this.mAutoTimeChangeReceiverFilter.addAction("android.intent.action.TIME_TICK");
    } 
    AppCompatDelegateImplV14.this.mContext.registerReceiver(this.mAutoTimeChangeReceiver, this.mAutoTimeChangeReceiverFilter);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplV14$AutoNightModeManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */