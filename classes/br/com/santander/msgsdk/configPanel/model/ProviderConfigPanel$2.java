package br.com.santander.msgsdk.configPanel.model;

import android.util.Log;
import br.com.santander.msgsdk.MSGSDK;
import is;
import org.json.JSONObject;

class ProviderConfigPanel$2 implements MSGSDK.CallbackRequestConfigPanelUpdate {
  public void onError(is paramis) {
    Log.d(ProviderConfigPanel.access$000(), "PROVIDER_UPDATE onSuccess: " + paramis.a());
    JSONObject jSONObject = paramis.c();
    Log.d(ProviderConfigPanel.access$000(), "PROVIDER_UPDATE onSuccess - jsonObjectResult: " + jSONObject);
    Error error = new Error(paramis.b());
    ProviderConfigPanel.access$200(ProviderConfigPanel.this).getResultUpdateStatus(error);
  }
  
  public void onSuccess(is paramis) {
    Log.d(ProviderConfigPanel.access$000(), "PROVIDER onSuccess: statusCode - " + paramis.a() + "statusMessage - " + paramis.b());
    JSONObject jSONObject = paramis.c();
    Log.d(ProviderConfigPanel.access$000(), "PROVIDER onSuccess - jsonObjectResult: " + jSONObject);
    ProviderConfigPanel.access$200(ProviderConfigPanel.this).getResultUpdateStatus(null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\model\ProviderConfigPanel$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */