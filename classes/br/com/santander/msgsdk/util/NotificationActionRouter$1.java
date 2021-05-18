package br.com.santander.msgsdk.util;

import android.view.View;
import br.com.santander.msgsdk.MSGSDK;

class NotificationActionRouter$1 implements View.OnClickListener {
  public void onClick(View paramView) {
    NotificationActionRouter.this.alertDialog.dismiss();
    NotificationActionRouter.this.finish();
    MSGSDK.updateStatus(NotificationActionRouter.this.getApplicationContext(), NotificationActionRouter.access$000(NotificationActionRouter.this), "DISCARTED", NotificationActionRouter.access$100(NotificationActionRouter.this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsd\\util\NotificationActionRouter$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */