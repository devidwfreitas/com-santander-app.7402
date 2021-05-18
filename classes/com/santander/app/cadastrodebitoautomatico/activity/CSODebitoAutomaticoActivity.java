package com.santander.app.cadastrodebitoautomatico.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.widget.Button;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import fzo;
import gac;
import gpu;
import grs;
import nau;

public class CSODebitoAutomaticoActivity extends grs implements nau {
  private final String a = "CSODebitoAutomaticoActivity";
  
  private Button b;
  
  private AlertDialog c;
  
  private Dialog d;
  
  private gac e;
  
  private void b() {
    Intent intent = getIntent();
    intent.getExtras();
    this.e = (gac)intent.getSerializableExtra("EXTRADADOS");
  }
  
  private void c() {
    SharedPreferences.Editor editor = getSharedPreferences("avaliacaoApp", 0).edit();
    editor.putBoolean("transacaoKey", true);
    editor.commit();
  }
  
  public void a() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131756677) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(0);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131756677, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    (new fzo(this)).execute((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968895);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, "Débito Automático");
    b();
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cadastrodebitoautomatico\activity\CSODebitoAutomaticoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */