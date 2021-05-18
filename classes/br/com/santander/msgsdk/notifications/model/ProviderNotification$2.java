package br.com.santander.msgsdk.notifications.model;

import android.util.Log;
import br.com.santander.msgsdk.MSGSDK;
import is;
import org.json.JSONObject;

class ProviderNotification$2 implements MSGSDK.CallbackUpdateStatusReadOrDelete {
  public void onError(is paramis) {
    Log.d(ProviderNotification.access$000(), "PROVIDER updateStatusReadOrDelete onError: statusCode - " + paramis.a());
    JSONObject jSONObject = paramis.c();
    Log.d(ProviderNotification.access$000(), "PROVIDER updateStatusReadOrDelete onError - jsonObjectResult: " + jSONObject);
    Error error = new Error(paramis.b());
    if (notificationDetail.isStatusExcluded()) {
      ProviderNotification.access$200(ProviderNotification.this).updateStatusDeleteResult(position, error);
      return;
    } 
    ProviderNotification.access$200(ProviderNotification.this).updateStatusReadResult(position, error);
  }
  
  public void onSuccess(is paramis) {
    Log.d(ProviderNotification.access$000(), "PROVIDER updateStatusReadOrDelete onSuccess:  statusCode - " + paramis.a());
    JSONObject jSONObject = paramis.c();
    Log.d(ProviderNotification.access$000(), "PROVIDER updateStatusReadOrDelete onSuccess: " + jSONObject);
    ProviderNotification.access$200(ProviderNotification.this).updateStatusReadResult(position, null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\model\ProviderNotification$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */