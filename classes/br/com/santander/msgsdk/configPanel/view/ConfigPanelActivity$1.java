package br.com.santander.msgsdk.configPanel.view;

import android.content.DialogInterface;
import android.view.KeyEvent;

class ConfigPanelActivity$1 implements DialogInterface.OnKeyListener {
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4) {
      ConfigPanelActivity.this.finish();
      ConfigPanelActivity.access$000(ConfigPanelActivity.this).dismiss();
      ConfigPanelActivity.this.onBackPressed();
    } 
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\configPanel\view\ConfigPanelActivity$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */