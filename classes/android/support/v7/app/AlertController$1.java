package android.support.v7.app;

import android.os.Message;
import android.view.View;

class AlertController$1 implements View.OnClickListener {
  public void onClick(View paramView) {
    Message message;
    if (paramView == AlertController.this.mButtonPositive && AlertController.this.mButtonPositiveMessage != null) {
      message = Message.obtain(AlertController.this.mButtonPositiveMessage);
    } else if (message == AlertController.this.mButtonNegative && AlertController.this.mButtonNegativeMessage != null) {
      message = Message.obtain(AlertController.this.mButtonNegativeMessage);
    } else if (message == AlertController.this.mButtonNeutral && AlertController.this.mButtonNeutralMessage != null) {
      message = Message.obtain(AlertController.this.mButtonNeutralMessage);
    } else {
      message = null;
    } 
    if (message != null)
      message.sendToTarget(); 
    AlertController.this.mHandler.obtainMessage(1, AlertController.this.mDialog).sendToTarget();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */