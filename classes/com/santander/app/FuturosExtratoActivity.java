package com.santander.app;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.widget.TextView;
import gpu;
import grs;
import naj;

public class FuturosExtratoActivity extends grs {
  private final String a = "FuturosExtratoActivity";
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969102);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298057));
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      ((TextView)findViewById(2131756891)).setText(bundle.getString("data"));
      ((TextView)findViewById(2131755402)).setText(bundle.getString("label"));
      TextView textView = (TextView)findViewById(2131755374);
      textView.setText(naj.f(bundle.getString("valor")));
      if (bundle.getString("valor").indexOf("-") != -1)
        textView.setTextColor(getResources().getColor(2131624298)); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\FuturosExtratoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */