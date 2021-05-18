package com.santander.app.desbloqueio.cartao.activity;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import gpu;
import grs;
import hcl;
import hct;
import nau;

public class DesbloqueioCartaoConfirmacaoActivity extends grs implements nau {
  private final String a = "DesbloqueioCartaoComprovanteActivity";
  
  private DesbloqueioCartaoConfirmacaoActivity b;
  
  private Dialog c;
  
  private hct d;
  
  private int e = 1;
  
  private void b() {
    if (this.c != null && this.c.isShowing()) {
      this.c.cancel();
      this.c = null;
    } 
  }
  
  public void a() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131756750) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(this.e);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131756750, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    (new hcl(this, null)).execute((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968912);
    this.b = this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131297131));
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\desbloqueio\cartao\activity\DesbloqueioCartaoConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */