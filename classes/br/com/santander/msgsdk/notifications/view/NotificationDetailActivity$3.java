package br.com.santander.msgsdk.notifications.view;

import android.content.Context;
import android.support.v7.app.AlertDialog;
import android.view.View;
import br.com.santander.msgsdk.R;

class NotificationDetailActivity$3 implements View.OnClickListener {
  public void onClick(View paramView) {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)NotificationDetailActivity.this);
    builder.setTitle(R.string.msg_dialog_title_delete_notification).setMessage(R.string.msg_dialog_delete_notification).setNegativeButton(R.string.msg_dialog_calcel_button, new NotificationDetailActivity$3$2(this)).setPositiveButton(R.string.msg_dialog_continue_button, new NotificationDetailActivity$3$1(this));
    NotificationDetailActivity.access$000(NotificationDetailActivity.this).dismiss();
    builder.create().show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationDetailActivity$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */