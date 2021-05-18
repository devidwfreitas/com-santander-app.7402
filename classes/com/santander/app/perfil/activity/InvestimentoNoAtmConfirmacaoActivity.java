package com.santander.app.perfil.activity;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import fuu;
import gky;
import gpu;
import grs;
import java.util.ArrayList;
import kbb;
import kbu;
import mzr;
import nai;
import naq;
import nau;

public class InvestimentoNoAtmConfirmacaoActivity extends grs implements nau {
  private static final String a = "InvestimentoNoAtmConfirmacaoActivity";
  
  private int b = 1;
  
  private Dialog c;
  
  private ArrayList<gky> d;
  
  private kbu e;
  
  private int f;
  
  private int g = -1;
  
  private fuu w;
  
  private void a() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131758446) == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(this.b);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131758447, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  private ArrayList<gky> b() {
    this.d = new ArrayList<gky>();
    this.d = new ArrayList<gky>();
    gky gky = new gky(getString(2131298035), mzr.g());
    gky.a(true);
    this.d.add(gky);
    gky = new gky(getString(2131297899), nai.c(mzr.m()));
    this.d.add(gky);
    gky = new gky(getString(2131297839), this.e.a());
    this.d.add(gky);
    gky = new gky(getString(2131297888), naq.h(this.e.b()));
    this.d.add(gky);
    return this.d;
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    (new kbb(this, null)).execute((Object[])new kbz[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969214);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    this.e = (kbu)getIntent().getExtras().getSerializable("investimento_no_atm");
    this.f = ((Integer)getIntent().getExtras().getSerializable("posicaoFinal")).intValue();
    this.g = ((Integer)getIntent().getExtras().getSerializable("posicaoInicial")).intValue();
    this.w = (fuu)getIntent().getExtras().getSerializable("cuentaBean");
    gpu.a((Activity)this, actionBar, getString(2131298954));
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\perfil\activity\InvestimentoNoAtmConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */