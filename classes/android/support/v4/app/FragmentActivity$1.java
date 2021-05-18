package android.support.v4.app;

import android.os.Handler;
import android.os.Message;

class FragmentActivity$1 extends Handler {
  public void handleMessage(Message paramMessage) {
    switch (paramMessage.what) {
      default:
        super.handleMessage(paramMessage);
        return;
      case 1:
        if (FragmentActivity.this.mStopped) {
          FragmentActivity.this.doReallyStop(false);
          return;
        } 
        return;
      case 2:
        break;
    } 
    FragmentActivity.this.onResumeFragments();
    FragmentActivity.this.mFragments.execPendingActions();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentActivity$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */