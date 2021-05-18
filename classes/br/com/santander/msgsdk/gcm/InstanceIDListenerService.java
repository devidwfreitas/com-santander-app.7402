package br.com.santander.msgsdk.gcm;

import android.content.Context;
import czs;

public class InstanceIDListenerService extends czs {
  public void onTokenRefresh() {
    RegistrationIntentServiceMSG.start((Context)this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\gcm\InstanceIDListenerService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */