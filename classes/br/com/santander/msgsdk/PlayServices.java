package br.com.santander.msgsdk;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import br.com.santander.msgsdk.gcm.RegistrationIntentServiceMSG;
import br.com.santander.msgsdk.util.Preferences;
import con;

class PlayServices {
  private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
  
  private static final String TAG = "PlayServices";
  
  private con apiAvailability;
  
  private Context context;
  
  private String hashUser;
  
  private boolean isSuccess;
  
  PlayServices(Context paramContext, String paramString) {
    this.context = paramContext;
    this.apiAvailability = con.a();
    this.hashUser = paramString;
  }
  
  private MSGSDK$Callback callback() {
    return new PlayServices$1(this);
  }
  
  private boolean check() {
    int i = this.apiAvailability.a(this.context);
    if (i != 0) {
      if (this.apiAvailability.a(i)) {
        Log.e("PlayServices", this.apiAvailability.c(i));
        return false;
      } 
      Log.e("PlayServices", "This device is not supported.");
      return false;
    } 
    return true;
  }
  
  private boolean validateUser() {
    boolean bool2 = false;
    String str = Preferences.getUserRegistered(this.context);
    if ("".equals(str))
      return true; 
    boolean bool1 = bool2;
    if (str != null) {
      bool1 = bool2;
      if (!str.equals(this.hashUser)) {
        MSGSDK.getInstance().unsubscribeArch(callback());
        return false;
      } 
    } 
    return bool1;
  }
  
  boolean isSuccess() {
    return this.isSuccess;
  }
  
  void showErrorDialog(Activity paramActivity) {
    int i = this.apiAvailability.a(this.context);
    this.apiAvailability.a(paramActivity, i, 9000);
  }
  
  public void start() {
    this.isSuccess = check();
    if (this.isSuccess && validateUser())
      RegistrationIntentServiceMSG.start(this.context); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\PlayServices.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */