package com.santander.app.seguros.ui.contract.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.util.Log;
import com.santander.app.seguros.ui.cancellation.activities.SuccessCancellationActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import gpu;
import grs;
import miq;
import nau;

public class CsoInsuranceActivity extends grs implements nau {
  public static final String a = "proposal-formalization-id";
  
  public static final String b = "status_insurance";
  
  private String c;
  
  private String d;
  
  private String e;
  
  private String f;
  
  private void a() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131755533) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(1);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131755533, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  private void b() {
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("insurance-name-key")) {
      this.c = getIntent().getExtras().getString("insurance-name-key");
    } else {
      this.c = "";
    } 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("proposal-formalization-id")) {
      this.d = getIntent().getExtras().getString("proposal-formalization-id");
    } else {
      this.d = "";
    } 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("status_insurance")) {
      this.e = getIntent().getExtras().getString("status_insurance");
    } else {
      this.e = "";
    } 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("family-id")) {
      this.f = getIntent().getExtras().getString("family-id");
      return;
    } 
    this.f = "";
  }
  
  private void c() {
    try {
      ActionBar actionBar = getSupportActionBar();
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getString(2131297580));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void d() {
    Intent intent = new Intent((Context)this, SuccessCancellationActivity.class);
    intent.putExtra("insurance_name_key", this.c);
    intent.putExtra("proposal-formalization-id", this.d);
    intent.putExtra("family-id", this.f);
    intent.putExtra("tag-name-key", "Seguros_Cancelamento_Vida_AP_Confirmacao_%s");
    startActivity(intent);
  }
  
  private void e() {
    Intent intent = new Intent((Context)this, ContractSuccessActivity.class);
    intent.putExtra("insurance-name-key", this.c);
    intent.putExtra("proposal-formalization-id", this.d);
    startActivity(intent);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    if (this.e.equals("0")) {
      e();
      return;
    } 
    if (this.e.equals("1")) {
      d();
      return;
    } 
    Log.e("CSOERROR", "ERRO STATUS INSURANCE");
  }
  
  public void onBackPressed() {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968644);
    c();
    miq.C().f(true);
    b();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\contract\activities\CsoInsuranceActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */