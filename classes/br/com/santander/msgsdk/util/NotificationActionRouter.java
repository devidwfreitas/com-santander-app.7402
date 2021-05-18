package br.com.santander.msgsdk.util;

import android.app.NotificationManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import br.com.santander.msgsdk.MSG;
import br.com.santander.msgsdk.MSGSDK;
import br.com.santander.msgsdk.R;

public class NotificationActionRouter extends AppCompatActivity {
  private static final String TAG = NotificationActionRouter.class.getSimpleName();
  
  AlertDialog alertDialog = null;
  
  private boolean delete = false;
  
  private boolean finishActivity = true;
  
  private Intent intent = null;
  
  private MSG msg = MSGSDK.getInstance();
  
  private String pushId = "";
  
  private String url = null;
  
  private String uuId = "";
  
  public void onBackPressed() {
    super.onBackPressed();
    finish();
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.intent = getPackageManager().getLaunchIntentForPackage(getPackageName());
    paramBundle = getIntent().getExtras();
    this.delete = paramBundle.getBoolean("msg_noti_del");
    this.pushId = paramBundle.getString("msg_push_id");
    this.uuId = paramBundle.getString("msg_push_uuid");
    int i = paramBundle.getInt("msg_noti_id");
    if (i > 0)
      ((NotificationManager)getSystemService("notification")).cancel(i); 
    if (!this.delete) {
      AlertDialog.Builder builder;
      (new int[1])[0] = paramBundle.getInt("msg_noti_intent_type");
      if ((new int[1])[0] == 2) {
        String str;
        this.url = paramBundle.getString("msg_noti_intent_extra");
        if (!Utils.isNullOrEmpty(this.url)) {
          str = this.url.replace("\\", "");
        } else {
          str = "";
        } 
        this.url = str;
        if (Utils.isValidUrl(this.url)) {
          this.finishActivity = false;
          builder = new AlertDialog.Builder((Context)this);
          View view = getLayoutInflater().inflate(R.layout.dialog_msg, null);
          builder.setView(view);
          TextView textView1 = (TextView)view.findViewById(R.id.cancel_dialog_button);
          TextView textView2 = (TextView)view.findViewById(R.id.open_browser_dialog_button);
          this.alertDialog = builder.create();
          this.alertDialog.setCanceledOnTouchOutside(false);
          this.alertDialog.requestWindowFeature(1);
          textView1.setOnClickListener(new NotificationActionRouter$1(this));
          textView2.setOnClickListener(new NotificationActionRouter$2(this));
          builder.setOnDismissListener(new NotificationActionRouter$3(this));
          this.alertDialog.show();
        } else {
          openDeepLink(this.url);
          finish();
        } 
      } else {
        this.intent.putExtra("msg_noti_stimulum_id", builder.getString("msg_noti_stimulum_id"));
        this.intent.putExtra("msg_noti_intent_extra", builder.getString("msg_noti_intent_extra"));
        startActivity(this.intent);
        finish();
        MSGSDK.updateStatus(getApplicationContext(), this.pushId, "OPENED", this.uuId);
      } 
    } else {
      MSGSDK.updateStatus(getApplicationContext(), this.pushId, "DISCARTED", this.uuId);
      finish();
    } 
    if (this.finishActivity)
      finish(); 
  }
  
  void openDeepLink(String paramString) {
    Log.d(TAG, "openDeepLink - " + paramString);
    try {
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      Log.d(TAG, "openDeepLink - ActivityNotFoundException");
      return;
    } catch (Exception exception) {
      Log.d(TAG, "openDeepLink - Exception " + exception.getMessage());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsd\\util\NotificationActionRouter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */