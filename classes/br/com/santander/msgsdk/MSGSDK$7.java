package br.com.santander.msgsdk;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.View;

class MSGSDK$7 implements View.OnClickListener {
  public void onClick(View paramView) {
    Intent intent = new Intent("android.intent.action.MAIN");
    intent.setData(Uri.parse("package:" + appActivity.getPackageName()));
    intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
    intent.setFlags(268435456);
    Log.d("MSGSDK", " package: " + appActivity.getPackageName());
    appActivity.startActivity(intent);
    alertDialog.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\MSGSDK$7.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */