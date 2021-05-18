package br.com.santander.msgsdk.notifications.view;

import android.content.DialogInterface;
import android.content.Intent;
import br.com.santander.msgsdk.MSGSDK;

class NotificationDetailActivity$3$1 implements DialogInterface.OnClickListener {
  public void onClick(DialogInterface paramDialogInterface, int paramInt) {
    if (MSGSDK.getInstance().getTracking() != null)
      MSGSDK.getInstance().getTracking().notificationDetailedPopUpOptionDelete(); 
    Intent intent = new Intent();
    intent.putExtra("position", NotificationDetailActivity.access$100(this.this$1.this$0));
    intent.putExtra("excluded", true);
    this.this$1.this$0.setResult(-1, intent);
    paramDialogInterface.dismiss();
    this.this$1.this$0.finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationDetailActivity$3$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */