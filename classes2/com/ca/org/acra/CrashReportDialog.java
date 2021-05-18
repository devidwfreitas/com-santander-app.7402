package com.ca.org.acra;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.ca.org.acra.collector.CrashReportData;
import com.ca.org.acra.util.ToastSender;
import java.io.IOException;

public final class CrashReportDialog extends Activity {
  private static final String STATE_COMMENT = "comment";
  
  private static final String STATE_EMAIL = "email";
  
  String mReportFileName;
  
  private SharedPreferences prefs;
  
  private EditText userComment;
  
  private EditText userEmail;
  
  protected void cancelNotification() {
    ((NotificationManager)getSystemService("notification")).cancel(666);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.mReportFileName = getIntent().getStringExtra("REPORT_FILE_NAME");
    Log.d(ACRA.LOG_TAG, "Opening CrashReportDialog for " + this.mReportFileName);
    if (this.mReportFileName == null)
      finish(); 
    requestWindowFeature(3);
    LinearLayout linearLayout2 = new LinearLayout((Context)this);
    linearLayout2.setOrientation(1);
    linearLayout2.setPadding(10, 10, 10, 10);
    linearLayout2.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
    linearLayout2.setFocusable(true);
    linearLayout2.setFocusableInTouchMode(true);
    final ScrollView scroll = new ScrollView((Context)this);
    linearLayout2.addView((View)scrollView, (ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -1, 1.0F));
    LinearLayout linearLayout3 = new LinearLayout((Context)this);
    linearLayout3.setOrientation(1);
    scrollView.addView((View)linearLayout3);
    TextView textView = new TextView((Context)this);
    textView.setText(getText(ACRA.getConfig().resDialogText()));
    linearLayout3.addView((View)textView);
    int i = ACRA.getConfig().resDialogCommentPrompt();
    if (i != 0) {
      textView = new TextView((Context)this);
      textView.setText(getText(i));
      textView.setPadding(textView.getPaddingLeft(), 10, textView.getPaddingRight(), textView.getPaddingBottom());
      linearLayout3.addView((View)textView, (ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
      this.userComment = new EditText((Context)this);
      this.userComment.setLines(2);
      if (paramBundle != null) {
        String str = paramBundle.getString("comment");
        if (str != null)
          this.userComment.setText(str); 
      } 
      linearLayout3.addView((View)this.userComment);
    } 
    i = ACRA.getConfig().resDialogEmailPrompt();
    if (i != 0) {
      String str;
      textView = new TextView((Context)this);
      textView.setText(getText(i));
      textView.setPadding(textView.getPaddingLeft(), 10, textView.getPaddingRight(), textView.getPaddingBottom());
      linearLayout3.addView((View)textView);
      this.userEmail = new EditText((Context)this);
      this.userEmail.setSingleLine();
      this.userEmail.setInputType(33);
      this.prefs = getSharedPreferences(ACRA.getConfig().sharedPreferencesName(), ACRA.getConfig().sharedPreferencesMode());
      textView = null;
      if (paramBundle != null)
        str = paramBundle.getString("email"); 
      if (str != null) {
        this.userEmail.setText(str);
      } else {
        this.userEmail.setText(this.prefs.getString("acra.user.email", ""));
      } 
      linearLayout3.addView((View)this.userEmail);
    } 
    LinearLayout linearLayout1 = new LinearLayout((Context)this);
    linearLayout1.setLayoutParams((ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
    linearLayout1.setPadding(linearLayout1.getPaddingLeft(), 10, linearLayout1.getPaddingRight(), linearLayout1.getPaddingBottom());
    Button button = new Button((Context)this);
    button.setText(17039379);
    button.setOnClickListener(new View.OnClickListener() {
          public void onClick(View param1View) {
            String str1;
            String str2;
            if (CrashReportDialog.this.userComment != null) {
              str1 = CrashReportDialog.this.userComment.getText().toString();
            } else {
              str1 = "";
            } 
            if (CrashReportDialog.this.prefs != null && CrashReportDialog.this.userEmail != null) {
              str2 = CrashReportDialog.this.userEmail.getText().toString();
              SharedPreferences.Editor editor = CrashReportDialog.this.prefs.edit();
              editor.putString("acra.user.email", str2);
              editor.commit();
            } else {
              str2 = "";
            } 
            CrashReportPersister crashReportPersister = new CrashReportPersister(CrashReportDialog.this.getApplicationContext());
            try {
              Log.d(ACRA.LOG_TAG, "Add user comment to " + CrashReportDialog.this.mReportFileName);
              CrashReportData crashReportData = crashReportPersister.load(CrashReportDialog.this.mReportFileName);
              crashReportData.put(ReportField.USER_COMMENT, str1);
              crashReportData.put(ReportField.USER_EMAIL, str2);
              crashReportPersister.store(crashReportData, CrashReportDialog.this.mReportFileName);
            } catch (IOException iOException) {
              Log.w(ACRA.LOG_TAG, "User comment not added: ", iOException);
            } 
            Log.v(ACRA.LOG_TAG, "About to start SenderWorker from CrashReportDialog");
            ACRA.getErrorReporter().startSendingReports(false, true);
            int i = ACRA.getConfig().resDialogOkToast();
            if (i != 0)
              ToastSender.sendToast(CrashReportDialog.this.getApplicationContext(), i, 1); 
            CrashReportDialog.this.finish();
          }
        });
    linearLayout1.addView((View)button, (ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2, 1.0F));
    button = new Button((Context)this);
    button.setText(17039369);
    button.setOnClickListener(new View.OnClickListener() {
          public void onClick(View param1View) {
            ACRA.getErrorReporter().deletePendingNonApprovedReports(false);
            CrashReportDialog.this.finish();
          }
        });
    linearLayout1.addView((View)button, (ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2, 1.0F));
    linearLayout2.addView((View)linearLayout1, (ViewGroup.LayoutParams)new LinearLayout.LayoutParams(-1, -2));
    setContentView((View)linearLayout2);
    i = ACRA.getConfig().resDialogTitle();
    if (i != 0)
      setTitle(i); 
    getWindow().setFeatureDrawableResource(3, ACRA.getConfig().resDialogIcon());
    cancelNotification();
    scrollView.post(new Runnable() {
          public void run() {
            scroll.scrollTo(0, 0);
          }
        });
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4)
      ACRA.getErrorReporter().deletePendingNonApprovedReports(false); 
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle) {
    super.onSaveInstanceState(paramBundle);
    if (this.userComment != null && this.userComment.getText() != null)
      paramBundle.putString("comment", this.userComment.getText().toString()); 
    if (this.userEmail != null && this.userEmail.getText() != null)
      paramBundle.putString("email", this.userEmail.getText().toString()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acra\CrashReportDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */