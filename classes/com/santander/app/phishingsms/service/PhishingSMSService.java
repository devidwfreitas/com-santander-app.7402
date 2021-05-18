package com.santander.app.phishingsms.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.support.annotation.Nullable;
import com.santander.app.phishingsms.receiver.PhishingSMSReceiver;

public class PhishingSMSService extends Service {
  private PhishingSMSReceiver a;
  
  @Nullable
  public IBinder onBind(Intent paramIntent) {
    return null;
  }
  
  public void onCreate() {
    super.onCreate();
    this.a = new PhishingSMSReceiver();
    IntentFilter intentFilter = new IntentFilter();
    intentFilter.addAction("android.provider.Telephony.SMS_RECEIVED");
    registerReceiver((BroadcastReceiver)this.a, intentFilter);
  }
  
  public void onDestroy() {
    super.onDestroy();
    if (this.a != null)
      unregisterReceiver((BroadcastReceiver)this.a); 
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    return 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\phishingsms\service\PhishingSMSService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */