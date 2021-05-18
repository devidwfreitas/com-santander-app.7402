package android.support.v4.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.KeyEvent;

class TransportMediatorJellybeanMR2$3 extends BroadcastReceiver {
  public void onReceive(Context paramContext, Intent paramIntent) {
    try {
      KeyEvent keyEvent = (KeyEvent)paramIntent.getParcelableExtra("android.intent.extra.KEY_EVENT");
      TransportMediatorJellybeanMR2.this.mTransportCallback.handleKey(keyEvent);
      return;
    } catch (ClassCastException classCastException) {
      Log.w("TransportController", classCastException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\media\TransportMediatorJellybeanMR2$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */