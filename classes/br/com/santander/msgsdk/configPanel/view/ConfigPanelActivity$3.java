package br.com.santander.msgsdk.configPanel.view;

import android.support.v7.app.AlertDialog;
import android.view.View;
import br.com.santander.msgsdk.configPanel.model.Category;
import br.com.santander.uisdk.SantanderSwitch;

class ConfigPanelActivity$3 implements View.OnClickListener {
  public void onClick(View paramView) {
    santanderSwitch.setChecked(true, false);
    category.setMembershipStatus(true);
    ConfigPanelActivity.this.trackingConfigNotificationAction(category);
    alertDialog.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\view\ConfigPanelActivity$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */