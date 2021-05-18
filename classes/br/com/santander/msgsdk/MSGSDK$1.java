package br.com.santander.msgsdk;

import android.content.Context;
import android.util.Log;
import br.com.santander.msgsdk.util.Constants;
import br.com.santander.msgsdk.util.Preferences;

final class MSGSDK$1 implements MSGSDK$CallbackUpdateStatus {
  public void onError() {
    MSGSDK.access$002(false);
    Log.e("MSGSDK", "Error - updateStatus - nº " + finalCount + " - pushId: " + pushIdP + " | status: " + statusP);
  }
  
  public void onSuccess() {
    MSGSDK.access$002(true);
    Preferences.clearStatusToSend(context);
    MSGSDK.access$102(Constants.EMPTY);
    Log.d("MSGSDK", "Success - updateStatus - nº " + finalCount + " - pushId: " + pushIdP + " | status: " + statusP);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\MSGSDK$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */