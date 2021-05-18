package android.support.v4.content;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class LocalBroadcastManager$1 extends Handler {
  LocalBroadcastManager$1(Looper paramLooper) {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage) {
    switch (paramMessage.what) {
      default:
        super.handleMessage(paramMessage);
        return;
      case 1:
        break;
    } 
    LocalBroadcastManager.access$000(LocalBroadcastManager.this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\LocalBroadcastManager$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */