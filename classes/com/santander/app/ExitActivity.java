package com.santander.app;

import android.app.Activity;
import android.os.Bundle;
import com.ca.android.app.CaMDOActivity;
import mxn;

public class ExitActivity extends CaMDOActivity {
  private final String a = "ExitActivity";
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    mxn.a((Activity)this, getIntent().getBooleanExtra("showHome", false), getIntent().getStringExtra("errorMessage"));
    MinhaConta.g();
  }
  
  protected void onPause() {
    super.onPause();
    MinhaConta.a(true);
  }
  
  protected void onResume() {
    super.onResume();
    MinhaConta.a(false);
    if (MinhaConta.f())
      MinhaConta.g(); 
  }
  
  protected void onStart() {
    super.onStart();
    setVisible(true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\ExitActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */