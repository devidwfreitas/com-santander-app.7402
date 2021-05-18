package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import fmj;
import fsz;
import ftd;
import ftq;
import ftt;
import fuu;
import goj;
import gpu;
import iih;
import nau;

public class RendaFixaAplicacaoConfirmacaoActivity extends goj implements nau {
  private boolean A;
  
  private String B;
  
  private String C;
  
  private fsz D;
  
  private ValidacionOperacionFragment E;
  
  private ftd F;
  
  private Boolean G = Boolean.valueOf(true);
  
  private Dialog H;
  
  private final String a = "RendaFixaAplicacaoConfirmacaoActivity";
  
  private RendaFixaAplicacaoConfirmacaoActivity b;
  
  private FragmentTransaction c;
  
  private FragmentManager f;
  
  private ftq g;
  
  private ftt w;
  
  private String x;
  
  private fuu y;
  
  private String z;
  
  private void j() {
    if (this.H != null && this.H.isShowing()) {
      this.H.cancel();
      this.H = null;
    } 
  }
  
  public ftq a() {
    return this.g;
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.setTransition(4097);
    switch (paramInt) {
      default:
        return;
      case 0:
        this.E = new ValidacionOperacionFragment();
        this.E.b(1);
        fragmentTransaction.replace(2131756356, (Fragment)this.E);
        fragmentTransaction.addToBackStack(null);
        fragmentTransaction.commit();
        return;
      case 1:
        (new fmj(this, null)).execute((Object[])new Void[0]);
        return;
      case 2:
        break;
    } 
    finish();
  }
  
  public void a(fsz paramfsz) {
    this.D = paramfsz;
  }
  
  public void a(String paramString) {
    this.B = paramString;
  }
  
  public ftt b() {
    return this.w;
  }
  
  public String c() {
    return this.x;
  }
  
  public fuu d() {
    return this.y;
  }
  
  public String e() {
    return this.z;
  }
  
  public boolean f() {
    return this.A;
  }
  
  public fsz g() {
    return this.D;
  }
  
  public String h() {
    return a(2131756346);
  }
  
  public String i() {
    return this.B;
  }
  
  public void onBackPressed() {
    if (!this.G.booleanValue())
      return; 
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969236);
    this.b = this;
    Intent intent = getIntent();
    this.g = (ftq)intent.getSerializableExtra("producto");
    this.w = (ftt)intent.getSerializableExtra("respSimularAplicacao");
    this.x = intent.getStringExtra("valorAplicado");
    this.y = (fuu)intent.getSerializableExtra("cuentaOrigen");
    this.z = intent.getStringExtra("prazo");
    this.A = intent.getBooleanExtra("agendada", false);
    this.C = intent.getStringExtra("dataAgendamento");
    this.F = (ftd)intent.getSerializableExtra("dadoAplicacao");
    if (this.A) {
      a(this.C);
    } else {
      a(intent.getStringExtra("fecha"));
    } 
    this.w.d(this.z);
    this.w.g(this.x);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131296460));
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131756356) == null) {
      iih iih = new iih();
      iih.a(this.g);
      iih.a(this.w);
      iih.a(this.b);
      iih.a(this.y);
      iih.a(this.A + "");
      this.c = fragmentManager.beginTransaction();
      this.c.add(2131756356, (Fragment)iih);
      this.c.setTransition(4097);
      this.c.commit();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\RendaFixaAplicacaoConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */