package com.santander.app;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.widget.TextView;
import gpu;
import grs;
import hau;

public class ConsultiveUserActivity extends grs {
  private final String a = "ConsultiveUserActivity";
  
  private ConsultiveUserActivity b;
  
  public void goBack(View paramView) {
    this.b.finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968875);
    this.b = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText(2131297207);
    gpu.a((Activity)this, actionBar, null);
    ((TextView)findViewById(2131756562)).setText((CharSequence)Html.fromHtml(getResources().getString(2131298110)));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onPause() {
    hau.a().a(null);
    super.onPause();
  }
  
  protected void onResume() {
    super.onResume();
    hau.a().a((Activity)this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\ConsultiveUserActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */