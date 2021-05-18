package com.santander.app.previdencia.presentation;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.RelativeLayout;
import gpu;
import grs;
import kex;
import key;

public class SemPrevidenciaActivity extends grs {
  private RelativeLayout a;
  
  private RelativeLayout b;
  
  private void a() {
    this.a = (RelativeLayout)findViewById(2131758385);
    this.b = (RelativeLayout)findViewById(2131758389);
    this.a.setOnClickListener((View.OnClickListener)new kex(this));
    this.b.setOnClickListener((View.OnClickListener)new key(this));
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setElevation(0.0F);
    gpu.a((Activity)this, actionBar, getString(2131298970));
    setContentView(2130969486);
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\previdencia\presentation\SemPrevidenciaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */