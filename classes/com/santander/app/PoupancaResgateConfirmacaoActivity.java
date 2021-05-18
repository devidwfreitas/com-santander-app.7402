package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.util.Log;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import fkw;
import frq;
import ftr;
import fts;
import gky;
import goj;
import gpu;
import gvb;
import iiq;
import iiv;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import nai;
import naj;
import nau;

public class PoupancaResgateConfirmacaoActivity extends goj implements nau {
  public Dialog a = null;
  
  private final String b = "PoupancaResgateConfirmacaoActivity";
  
  private final String c = "ConfirmarInvestimentoPoupancaResgatePasoTresBFragment";
  
  private PoupancaResgateConfirmacaoActivity f;
  
  private fkw g;
  
  private fts w;
  
  private ftr x;
  
  private fts y;
  
  private Boolean z = Boolean.valueOf(true);
  
  private void a(gvb paramgvb) {
    String str;
    if (this.x.c()) {
      str = "ValorTotal";
    } else {
      str = "ValorParcial";
    } 
    frq.d("Investimentos_Poupanca_Resgatar_Tipo", str);
    frq.a("Investimentos_Poupanca_Resgatar_Tipo_ValorParcial", Double.parseDouble(this.x.b()));
    if (this.x.d()) {
      str = "DataAgendada";
    } else {
      str = "Hoje";
    } 
    frq.d("Investimentos_Poupanca_Resgatar_Data_Opcao", str);
    frq.d("Investimentos_Poupanca_Resgatar_Data", paramgvb.l());
    frq.d("Investimentos_Poupanca_Resgatar_ReferOper", paramgvb.k());
  }
  
  private void e() {
    this.g = new fkw(this, null);
    this.g.execute((Object[])new Void[0]);
  }
  
  private void f() {
    g();
  }
  
  private void g() {
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("Transação:", "Resgate"));
    arrayList.add(new gky("Titular:", this.y.j()));
    arrayList.add(new gky("CPF:", nai.c(this.y.f())));
    arrayList.add(new gky("Conta Poupança:", this.y.l() + " " + this.y.o()));
    arrayList.add(new gky("Valor:", naj.f(this.y.x())));
    try {
      String str1;
      if (this.x.d()) {
        str1 = this.x.e();
      } else {
        str1 = this.w.p();
      } 
      Date date = (new SimpleDateFormat("yyyyMMdd")).parse(str1);
      arrayList.add(new gky("Data Contábil:", (new SimpleDateFormat("dd/MM/yyyy")).format(date)));
    } catch (ParseException parseException) {
      Log.e("Error", parseException.toString());
    } 
    gvb gvb = new gvb();
    String str = (new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date());
    gvb.f(str);
    gvb.e(this.y.d());
    gvb.d(false);
    gvb.g("Comprovante - " + getString(2131299000) + " " + str);
    gvb.b(arrayList);
    gvb.c(getString(2131299000));
    gvb.d(getString(2131299000) + " realizado com sucesso");
    gvb.i("ConfirmarInvestimentoPoupancaResgatePasoTresBFragment");
    gvb.m(true);
    a(gvb);
    Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)gvb);
    startActivity(intent);
  }
  
  private void h() {
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.setTransition(4097);
    iiq iiq = new iiq();
    iiq.a(this.f);
    fragmentTransaction.replace(2131756356, (Fragment)iiq);
    fragmentTransaction.addToBackStack(null);
    fragmentTransaction.commit();
  }
  
  public String a() {
    return this.x.e();
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    ValidacionOperacionFragment validacionOperacionFragment;
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.setTransition(4097);
    switch (paramInt) {
      default:
        return;
      case 0:
        validacionOperacionFragment = new ValidacionOperacionFragment();
        validacionOperacionFragment.b(1);
        fragmentTransaction.replace(2131756356, (Fragment)validacionOperacionFragment);
        fragmentTransaction.addToBackStack(null);
        fragmentTransaction.commit();
        return;
      case 1:
        e();
        return;
      case 2:
        break;
    } 
    finish();
  }
  
  public ftr b() {
    return this.x;
  }
  
  public fts c() {
    return this.w;
  }
  
  public fts d() {
    return this.y;
  }
  
  public void onBackPressed() {
    if (!this.z.booleanValue())
      return; 
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969236);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    Intent intent = getIntent();
    this.x = (ftr)intent.getSerializableExtra("requestParam");
    this.w = (fts)intent.getSerializableExtra("responseResgatar");
    this.f = this;
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131298475));
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131756356) == null) {
      iiv iiv = new iiv();
      iiv.a(this.f);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131756356, (Fragment)iiv);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\PoupancaResgateConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */