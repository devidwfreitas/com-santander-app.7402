package com.santander.app.seguros.ui.assistance.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.app.ActionBar;
import android.text.TextUtils;
import ejm;
import gpu;
import grs;
import java.util.List;
import kof;
import kog;
import koi;
import koj;
import kon;
import kps;
import kzt;
import kzu;
import kzv;
import kzx;
import kzy;
import lay;
import lbb;
import lbi;
import lcj;
import lcm;
import lcn;
import lcs;
import lct;
import lcx;
import ldn;
import ldq;
import ldr;
import mhj;

public class AssistanceActivity extends grs {
  public static final String a = "ASSISTANCE_INFO_KEY";
  
  private koi b;
  
  private List<kps> c;
  
  private kps d;
  
  private kon e;
  
  private String f;
  
  private String g;
  
  private void a() {
    b();
    lcn lcn = lcn.a(this.b.a(), this.b.b());
    lcn.a((lcs)new kzt(this));
    a((Fragment)lcn);
  }
  
  private void a(Fragment paramFragment) {
    getSupportFragmentManager().beginTransaction().replace(2131755280, paramFragment).addToBackStack(null).commit();
  }
  
  private void a(String paramString) {
    if (!TextUtils.isEmpty(this.d.c())) {
      lay lay = lay.a(this.d.c());
      lay.a((lbb)new kzu(this, paramString));
      lay.show(getSupportFragmentManager(), null);
      return;
    } 
    b(paramString);
  }
  
  private void a(boolean paramBoolean, String paramString) {
    boolean bool = paramString.equals("2");
    ldn ldn = ldn.a(new ldr(this.b, this.d, this.e, this.f, paramBoolean, bool));
    ldn.a((ldq)new kzv(this, bool));
    a((Fragment)ldn);
  }
  
  private void b() {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null) {
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getString(2131296534));
    } 
  }
  
  private void b(String paramString) {
    String str = kof.a(this.g, this.b.b(), this.d.g().a());
    if (this.f == null && this.d.a().equals("315")) {
      e();
      return;
    } 
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            lbi.a().show(getSupportFragmentManager(), null);
            return;
          case 1:
            if (TextUtils.isEmpty(str)) {
              lbi.a().show(getSupportFragmentManager(), null);
              return;
            } 
            return;
          case 2:
            if (TextUtils.isEmpty(str)) {
              lbi.a().show(getSupportFragmentManager(), null);
              return;
            } 
            a(false, paramString);
            return;
          case 3:
            break;
        } 
        break;
      case 49:
        if (paramString.equals("1"))
          b = 0; 
      case 51:
        if (paramString.equals("3"))
          b = 1; 
      case 50:
        if (paramString.equals("2"))
          b = 2; 
      case 52:
        if (paramString.equals("4"))
          b = 3; 
    } 
    d();
  }
  
  private void c() {
    finish();
    startActivity(new Intent((Context)this, MyAssistancesActivity.class));
  }
  
  private void d() {
    kog kog = this.d.g();
    if (kog == null)
      return; 
    String str1 = kog.a();
    String str2 = this.d.a();
    lct lct = lct.a(new koj(this.b.a(), str2, str1));
    lct.a((lcx)new kzx(this));
    a((Fragment)lct);
  }
  
  private void e() {
    lcj lcj = lcj.a();
    lcj.a((lcm)new kzy(this));
    a((Fragment)lcj);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    if (getSupportFragmentManager().getBackStackEntryCount() == 0)
      finish(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968610);
    if (getIntent().getExtras() != null)
      this.b = (koi)(new ejm()).a(getIntent().getExtras().getString("ASSISTANCE_INFO_KEY"), koi.class); 
    this.g = mhj.a((Context)this, "jsons/assistance/accountProductsMapping.json");
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\assistance\activities\AssistanceActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */