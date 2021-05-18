package com.santander.app.notification;

import android.os.Bundle;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.domain.NotificationData;
import com.santander.app.MinhaConta;
import cyw;
import gnp;

public class NotificationService extends cyw {
  public void onCreate() {
    super.onCreate();
  }
  
  public void onDestroy() {
    super.onDestroy();
  }
  
  public void onMessageReceived(String paramString, Bundle paramBundle) {
    if (MinhaConta.b() == null)
      MinhaConta.a(getApplicationContext()); 
    NotificationData notificationData = MSGSDK.getInstance().fromBundle(paramBundle);
    MSGSDK.getInstance().initOffline(MinhaConta.b(), gnp.a().b(), true);
    MSGSDK.getInstance().sendNotification(MinhaConta.b(), notificationData);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\notification\NotificationService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */