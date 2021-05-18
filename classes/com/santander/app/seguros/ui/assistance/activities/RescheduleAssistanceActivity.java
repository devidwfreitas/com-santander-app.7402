package com.santander.app.seguros.ui.assistance.activities;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import gpu;
import grs;
import kxl;
import kxm;
import kxn;
import laa;
import lab;
import lac;
import lad;
import lbl;
import lbo;
import lds;
import ldx;

public class RescheduleAssistanceActivity extends grs {
  public static final int a = 5;
  
  public static final String b = "ASSISTANCE_NUMBER_KEY";
  
  public static final String c = "ASSISTANCE_TYPE_KEY";
  
  private MultiStateLayout d;
  
  private kxm e;
  
  private String f;
  
  private String g;
  
  private String w;
  
  private void a() {
    this.e = (kxm)new kxn();
    lds lds = lds.a();
    lds.a((ldx)new laa(this));
    a((Fragment)lds);
  }
  
  private void a(Fragment paramFragment) {
    getSupportFragmentManager().beginTransaction().replace(2131755280, paramFragment).commit();
  }
  
  private void a(String paramString) {
    lbl lbl = lbl.b(this.f, paramString);
    lbl.a((lbo)new lad(this));
    a((Fragment)lbl);
  }
  
  private void b() {
    this.d.setState(aor.LOADING);
    this.e.b(this.g, this.w, (kxl)new lab(this), (kxl)new lac(this));
  }
  
  private void c() {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null) {
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getString(2131298509));
    } 
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    if (getSupportFragmentManager().getBackStackEntryCount() == 0)
      finish(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968610);
    if (getIntent().getExtras() != null) {
      this.f = getIntent().getExtras().getString("ASSISTANCE_TYPE_KEY");
      this.g = getIntent().getExtras().getString("ASSISTANCE_NUMBER_KEY");
    } 
    this.d = (MultiStateLayout)findViewById(2131755279);
    c();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\assistance\activities\RescheduleAssistanceActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */