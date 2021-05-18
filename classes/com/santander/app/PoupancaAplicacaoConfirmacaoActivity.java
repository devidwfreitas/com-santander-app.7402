package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import fkl;
import fkm;
import foh;
import frq;
import fsy;
import ftl;
import goj;
import gpu;
import gvb;
import gyd;
import iin;
import ilk;
import java.io.Serializable;
import mzn;
import mzp;
import nak;
import nau;

public class PoupancaAplicacaoConfirmacaoActivity extends goj implements nau {
  private String A;
  
  private FragmentTransaction B;
  
  private fkm C;
  
  private fsy D;
  
  private fsy E;
  
  private Boolean F = Boolean.valueOf(false);
  
  private Dialog G;
  
  private Boolean H = Boolean.valueOf(true);
  
  private SharedPreferences I;
  
  private gyd J;
  
  private final String a = "PoupancaAplicacaoConfirmacaoActivity";
  
  private PoupancaAplicacaoConfirmacaoActivity b;
  
  private fsy c;
  
  private ftl f;
  
  private boolean g;
  
  private String w;
  
  private String x;
  
  private String y;
  
  private String z;
  
  private void b(fsy paramfsy) {
    n();
    mzp mzp1 = mzp.RELOAD_CONTA;
    mzp mzp2 = mzp.RELOAD_POUPANCA;
    mzn mzn = new mzn();
    fkl fkl = new fkl(this, paramfsy);
    mzn.a(new mzp[] { mzp1, mzp2 }, (foh)fkl);
  }
  
  private void c(fsy paramfsy) {
    String str;
    n();
    gvb gvb = new gvb();
    if (paramfsy == null || paramfsy.m() == null) {
      str = "";
    } else {
      str = str.m();
    } 
    gvb.b(str);
    gvb.c(this.b.getString(2131296460));
    gvb.d(this.b.getString(2131298397));
    gvb.e("");
    gvb.f("");
    gvb.i("telaApliPoupancaNOK.end");
    gvb.e(true);
    gvb.d(false);
    gvb.l(true);
    Intent intent = new Intent((Context)this.b, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)gvb);
    startActivity(intent);
  }
  
  private void d(fsy paramfsy) {
    String str;
    frq.a("Investimentos_Poupanca_Aplicar_Valor", Double.parseDouble(this.x));
    if (this.g) {
      str = "DataAgendada";
    } else {
      str = "Hoje";
    } 
    frq.d("Investimentos_Poupanca_Aplicar_Data_Opcao", str);
    frq.d("Investimentos_Poupanca_Aplicar_Data", nak.l(nak.r(this.b.c())));
    frq.d("Investimentos_Poupanca_Aplicar_ReferOper", paramfsy.b());
  }
  
  private void n() {
    this.J.a();
    this.J.o();
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    ValidacionOperacionFragment validacionOperacionFragment;
    ilk ilk;
    FragmentManager fragmentManager = getSupportFragmentManager();
    this.B = fragmentManager.beginTransaction();
    this.B.setTransition(4097);
    switch (paramInt) {
      default:
        return;
      case 0:
        validacionOperacionFragment = new ValidacionOperacionFragment();
        validacionOperacionFragment.b(1);
        this.B.replace(2131756356, (Fragment)validacionOperacionFragment);
        this.B.addToBackStack(null);
        this.B.commit();
        return;
      case 1:
        this.C = new fkm(this, null);
        this.C.execute((Object[])new Void[0]);
        return;
      case 2:
        finish();
        return;
      case 3:
        ilk = new ilk();
        this.B.replace(2131756356, (Fragment)ilk);
        this.B.commit();
        return;
      case 4:
        break;
    } 
    iin iin = new iin();
    iin.a(this);
    FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
    fragmentTransaction.replace(2131756356, (Fragment)iin);
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
  }
  
  public void a(fsy paramfsy) {
    this.E = paramfsy;
  }
  
  public void a(Boolean paramBoolean) {
    this.F = paramBoolean;
  }
  
  public void a(String paramString) {
    this.y = paramString;
  }
  
  public boolean a() {
    return this.g;
  }
  
  public String b() {
    return this.w;
  }
  
  public String c() {
    return this.A;
  }
  
  public String d() {
    return this.x;
  }
  
  public fsy e() {
    return this.c;
  }
  
  public ftl f() {
    return this.f;
  }
  
  public fsy g() {
    return this.E;
  }
  
  public PoupancaAplicacaoConfirmacaoActivity h() {
    return this.b;
  }
  
  public Boolean i() {
    return this.F;
  }
  
  public String j() {
    return this.y;
  }
  
  public void onBackPressed() {
    if (!this.H.booleanValue())
      return; 
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.b = this;
    this.J = gyd.n();
    Intent intent = getIntent();
    this.f = (ftl)intent.getSerializableExtra("itemPosicaoConsolidada");
    this.c = (fsy)intent.getSerializableExtra("aplicaPoupanca");
    this.g = intent.getBooleanExtra("agendada", false);
    this.w = intent.getStringExtra("fecha");
    this.A = intent.getStringExtra("dataContabil");
    this.x = intent.getStringExtra("valorM");
    this.y = intent.getStringExtra("agencia");
    this.z = intent.getStringExtra("conta");
    setContentView(2130969236);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131296460));
    if (getSupportFragmentManager().findFragmentById(2131756356) == null) {
      if (this.c.h() != null && this.c.h().trim().length() == 0 && this.c.i() != null && this.c.i().trim().length() == 0) {
        a(3, false);
        return;
      } 
      a(4, false);
      return;
    } 
    this.H = Boolean.valueOf(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\PoupancaAplicacaoConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */