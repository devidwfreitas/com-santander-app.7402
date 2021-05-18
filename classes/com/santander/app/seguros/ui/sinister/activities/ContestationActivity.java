package com.santander.app.seguros.ui.sinister.activities;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import br.com.zup.multistatelayout.MultiStateLayout;
import gpu;
import grs;
import kvp;
import kws;
import kxd;
import kya;
import kyb;
import lql;
import lqm;
import lxc;
import mys;

public class ContestationActivity extends grs {
  public static final String a = "sinister-key";
  
  public static final String b = "justify-contestation-frag-tag";
  
  public static final String c = "success-contestation-frag-tag";
  
  public static final String d = "status-payment";
  
  private MultiStateLayout e;
  
  private FrameLayout f;
  
  private Button g;
  
  private kya w = (kya)new kyb();
  
  private kvp x;
  
  private boolean y;
  
  private void e() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131297004));
  }
  
  private void f() {
    this.e = (MultiStateLayout)findViewById(2131755279);
    this.f = (FrameLayout)findViewById(2131755531);
    this.g = (Button)findViewById(2131755532);
    this.g.setOnClickListener(c());
  }
  
  public kya a() {
    return this.w;
  }
  
  public void a(Fragment paramFragment, String paramString) {
    getSupportFragmentManager().beginTransaction().setCustomAnimations(2131034135, 2131034136, 2131034136, 2131034135).replace(2131755531, paramFragment, paramString).addToBackStack(null).commit();
  }
  
  public void a(String paramString, boolean paramBoolean) {
    if (paramBoolean) {
      ObjectAnimator objectAnimator = ObjectAnimator.ofInt(this.g, "textColor", new int[] { ContextCompat.getColor((Context)this, 2131624053), ContextCompat.getColor((Context)this, 2131624121) });
      objectAnimator.setDuration(1000L);
      objectAnimator.setEvaluator((TypeEvaluator)new ArgbEvaluator());
      objectAnimator.addListener((Animator.AnimatorListener)new lql(this, paramString));
      objectAnimator.start();
      return;
    } 
    this.g.setText(paramString);
  }
  
  public MultiStateLayout b() {
    return this.e;
  }
  
  public View.OnClickListener c() {
    return (View.OnClickListener)new lqm(this);
  }
  
  public void close() {
    if (!isFinishing())
      finish(); 
  }
  
  public boolean d() {
    return this.y;
  }
  
  public void onBackPressed() {
    kws.a().b().a(new kxd(true));
    close();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968643);
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("sinister-key"))
      this.x = (kvp)mys.a().a(getIntent().getExtras().getString("sinister-key"), kvp.class); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("status-payment"))
      this.y = getIntent().getExtras().getBoolean("status-payment"); 
    f();
    e();
    a((Fragment)lxc.a(this.x), "justify-contestation-frag-tag");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\ContestationActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */