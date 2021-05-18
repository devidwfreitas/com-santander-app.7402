package com.santander.app.meuperfil.activity;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import gpu;
import grs;

public class PoliticaPrivacidadeGoogleActivity extends grs {
  private static final String a = "PoliticaPrivacidadeGoogleActivity";
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getResources().getText(2131298996).toString());
    setContentView(2130968729);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\PoliticaPrivacidadeGoogleActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */