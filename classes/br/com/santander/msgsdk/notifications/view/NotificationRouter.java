package br.com.santander.msgsdk.notifications.view;

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
import br.com.santander.msgsdk.R;
import br.com.santander.msgsdk.util.Utils;

public class NotificationRouter extends AppCompatActivity {
  private static String TAG = NotificationRouter.class.getName();
  
  private AlertDialog alertDialog;
  
  private Intent intentAction;
  
  private String position;
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1 && paramInt2 == -1) {
      String str = paramIntent.getStringExtra("position");
      boolean bool = paramIntent.getBooleanExtra("excluded", false);
      paramIntent = new Intent();
      paramIntent.putExtra("position", str);
      paramIntent.putExtra("excluded", bool);
      setResult(-1, paramIntent);
    } 
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    TextView textView1;
    TextView textView2;
    super.onCreate(paramBundle);
    Bundle bundle = getIntent().getExtras();
    this.intentAction = new Intent(getPackageManager().getLaunchIntentForPackage(getPackageName()));
    String str2 = bundle.getString("text");
    String str3 = bundle.getString("title");
    String str4 = bundle.getString("sentDate");
    String str5 = bundle.getString("expirationDate");
    bundle.getString("stimulumId");
    String str6 = bundle.getString("stimulumType");
    String str1 = bundle.getString("url");
    this.position = bundle.getString("position");
    if (!Utils.isNullOrEmpty(str6) && Integer.parseInt(str6) == 2) {
      if (!Utils.isNullOrEmpty(str1) && Utils.isValidUrl(str1)) {
        AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
        View view = getLayoutInflater().inflate(R.layout.dialog_msg, null);
        builder.setView(view);
        textView1 = (TextView)view.findViewById(R.id.cancel_dialog_button);
        textView2 = (TextView)view.findViewById(R.id.open_browser_dialog_button);
        this.alertDialog = builder.create();
        this.alertDialog.setCanceledOnTouchOutside(false);
        this.alertDialog.requestWindowFeature(1);
        textView1.setOnClickListener(new NotificationRouter$1(this));
        textView2.setOnClickListener(new NotificationRouter$2(this, str1));
        builder.setOnDismissListener(new NotificationRouter$3(this));
        this.alertDialog.show();
        return;
      } 
      openDeepLink(str1);
      return;
    } 
    this.intentAction = new Intent((Context)this, NotificationDetailActivity.class);
    this.intentAction.putExtra("text", (String)textView1);
    this.intentAction.putExtra("title", (String)textView2);
    this.intentAction.putExtra("sentDate", str4);
    this.intentAction.putExtra("expirationDate", str5);
    this.intentAction.putExtra("url", str1);
    this.intentAction.putExtra("position", this.position);
    startActivityForResult(this.intentAction, 1);
  }
  
  void openDeepLink(String paramString) {
    Log.d(TAG, "openDeepLink - " + paramString);
    try {
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
      finish();
      return;
    } catch (ActivityNotFoundException activityNotFoundException) {
      Log.d(TAG, "openDeepLink - ActivityNotFoundException");
      finish();
      return;
    } catch (Exception exception) {
      Log.d(TAG, "openDeepLink - Exception " + exception.getMessage());
      finish();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsdk\notifications\view\NotificationRouter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */