package com.santander.app.seguros.ui.assistance.activities;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import gpu;
import grs;
import kzz;
import lca;

public class MyAssistancesActivity extends grs {
  private final String a = "SCHEDULING_LIST_FRAGMENT_TAG";
  
  private void a() {
    a((Fragment)lca.a());
  }
  
  private void b() {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null) {
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getString(2131298239));
    } 
  }
  
  public void a(Fragment paramFragment) {
    getSupportFragmentManager().beginTransaction().replace(2131755280, paramFragment).addToBackStack(null).commit();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    if (paramInt2 == 5)
      (new Handler()).postDelayed((Runnable)new kzz(this), 500L); 
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    if (getSupportFragmentManager().getBackStackEntryCount() == 0)
      finish(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968610);
    b();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\assistance\activities\MyAssistancesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */