package br.com.santander.msgsdk.gcm;

import android.util.Log;
import br.com.santander.msgsdk.MSGSDK;

class RegistrationIntentServiceMSG$1 implements MSGSDK.Callback {
  public void onError() {
    Log.e("RegIntentService", "Subscribe error.");
  }
  
  public void onSuccess() {
    MSGSDK.getInstance().saveUserPreferences();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\gcm\RegistrationIntentServiceMSG$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */