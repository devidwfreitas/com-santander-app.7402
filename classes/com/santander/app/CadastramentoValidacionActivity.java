package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import fhb;
import gpu;
import grs;
import nau;

public class CadastramentoValidacionActivity extends grs implements nau {
  public Dialog a = null;
  
  private final String b = "CadastramentoValidacionActivity";
  
  private Activity c;
  
  private fhb d;
  
  private int e;
  
  private int f;
  
  private String g;
  
  public void a(int paramInt, boolean paramBoolean) {
    this.d = new fhb(this, null);
    this.d.execute((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968823);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297338));
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      this.e = bundle.getInt("strSeqEnd");
      this.f = bundle.getInt("numCartao");
    } 
    this.c = (Activity)this;
    if (!this.v.f().e().booleanValue()) {
      FragmentManager fragmentManager = getSupportFragmentManager();
      if (fragmentManager.findFragmentById(2131756356) == null) {
        ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
        validacionOperacionFragment.b(0);
        FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
        fragmentTransaction.add(2131756356, (Fragment)validacionOperacionFragment);
        fragmentTransaction.setTransition(4097);
        fragmentTransaction.commit();
      } 
      return;
    } 
    this.d = new fhb(this, null);
    this.d.execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\CadastramentoValidacionActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */