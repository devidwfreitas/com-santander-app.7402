package br.com.santander.msgsdk.gcm;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import br.com.santander.msgsdk.MSGSDK;

public class RegistrationIntentServiceMSG extends IntentService {
  private static final String TAG = "RegIntentService";
  
  private static final String intentExtraUpdateToken = "updateToken";
  
  public RegistrationIntentServiceMSG() {
    super("RegIntentService");
  }
  
  private MSGSDK.Callback callback() {
    return new RegistrationIntentServiceMSG$1(this);
  }
  
  public static void start(Context paramContext) {
    start(paramContext, false);
  }
  
  public static void start(Context paramContext, boolean paramBoolean) {
    Intent intent = new Intent(paramContext, RegistrationIntentServiceMSG.class);
    if (paramBoolean)
      intent.putExtra("updateToken", paramBoolean); 
    paramContext.startService(intent);
  }
  
  protected void onHandleIntent(Intent paramIntent) {
    String str = MSGSDK.getInstance().getToken();
    MSGSDK.getInstance().subscribeArch(callback());
    Log.i("RegIntentService", "MSGSDK - GCM Registration Token: " + str);
    Bundle bundle = paramIntent.getExtras();
    if (bundle != null && bundle.getBoolean("updateToken", false)) {
      SharedPreferences.Editor editor = getSharedPreferences("spUtFile", 0).edit();
      editor.putBoolean("sput", true);
      editor.apply();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\gcm\RegistrationIntentServiceMSG.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */