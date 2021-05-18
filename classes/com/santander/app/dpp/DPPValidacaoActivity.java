package com.santander.app.dpp;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import frq;
import gpu;
import grs;
import heg;
import heh;
import hei;
import heq;
import java.io.Serializable;
import nau;

public class DPPValidacaoActivity extends grs implements Serializable, nau {
  private heq a;
  
  private int b;
  
  private Dialog c;
  
  private boolean d = true;
  
  private void a() {
    if (this.d) {
      frq.a("Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Valor", Double.parseDouble(this.a.s()));
      frq.d("Investimentos_Poupanca_DepositoProgramado_ProprioCliente_Dia", this.a.n());
      frq.d("Investimentos_Poupanca_DepositoProgramado_ProprioCliente_DataDeInicio", this.a.k());
      frq.d("Investimentos_Poupanca_DepositoProgramado_ProprioCliente_NumeroDeMeses", this.a.r());
    } else {
      frq.d("Investimentos_Poupanca_DepositoProgramado_Terceiros_Valor", this.a.s());
      frq.d("Investimentos_Poupanca_DepositoProgramado_Terceiros_Dia", this.a.n());
      frq.d("Investimentos_Poupanca_DepositoProgramado_Terceiros_DataDeInicio", this.a.k());
      frq.d("Investimentos_Poupanca_DepositoProgramado_Terceiros_NumeroDeMeses", this.a.r());
    } 
    frq.d("Investimentos_Poupanca_DepositoProgramado_ReferOper", this.a.w());
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    switch (this.b) {
      default:
        return;
      case 0:
        (new hei(this)).execute((Object[])new Void[0]);
        return;
      case 1:
        (new heg(this)).execute((Object[])new Void[0]);
        return;
      case 2:
        break;
    } 
    (new heh(this)).execute((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    boolean bool;
    super.onCreate(paramBundle);
    setContentView(2130969113);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, null);
    Bundle bundle = getIntent().getExtras();
    this.a = (heq)bundle.getSerializable("dpp");
    this.b = bundle.getInt("opcao");
    if (bundle.getString("isProprioCliente").equals("true")) {
      bool = true;
    } else {
      bool = false;
    } 
    this.d = bool;
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131756356) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(0);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131756356, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\dpp\DPPValidacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */