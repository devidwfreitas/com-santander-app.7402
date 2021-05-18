package br.com.santander.msgsdk;

import android.util.Log;
import br.com.santander.msgsdk.gcm.RegistrationIntentServiceMSG;
import br.com.santander.msgsdk.util.Preferences;

class PlayServices$1 implements MSGSDK$Callback {
  public void onError() {
    Log.e("PlayServices", "Error unsubscribe.");
  }
  
  public void onSuccess() {
    Preferences.clearUserRegistered(PlayServices.access$000(PlayServices.this));
    RegistrationIntentServiceMSG.start(PlayServices.access$000(PlayServices.this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\PlayServices$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */