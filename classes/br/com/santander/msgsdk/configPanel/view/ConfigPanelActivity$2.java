package br.com.santander.msgsdk.configPanel.view;

import android.util.Log;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.util.Preferences;

class ConfigPanelActivity$2 implements MSGSDK.Callback {
  public void onError() {
    Log.e(ConfigPanelActivity.access$100(ConfigPanelActivity.this), "Subscribe error.");
  }
  
  public void onSuccess() {
    Log.e(ConfigPanelActivity.access$100(ConfigPanelActivity.this), "Subscribe success.");
    MSGSDK.getInstance().saveUserPreferences();
    Preferences.setSubscribe(ConfigPanelActivity.this.getApplicationContext(), true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\view\ConfigPanelActivity$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */