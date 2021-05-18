package br.com.santander.msgsdk;

import android.util.Log;
import br.com.santander.msgsdk.util.Preferences;
import ih;
import is;

class MSGSDK$3 implements ih {
  public void onFailure(is paramis) {
    Log.e("MSGSDK", "unsubscribe - Failure " + paramis.b());
    Preferences.setSubscribe(MSGSDK.access$200(MSGSDK.this), false);
    if (callback != null)
      callback.onError(); 
  }
  
  public void onSuccess(is paramis) {
    Log.d("MSGSDK", "unsubscribe - Success");
    Preferences.setSubscribe(MSGSDK.access$200(MSGSDK.this), false);
    if (callback != null)
      callback.onSuccess(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\MSGSDK$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */