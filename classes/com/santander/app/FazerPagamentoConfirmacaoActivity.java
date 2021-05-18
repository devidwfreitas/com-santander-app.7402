package com.santander.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Process;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.view.View;
import com.santander.app.cadastrodebitoautomatico.activity.CadastrarDebitoAutomaticoActivity;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import fhs;
import fht;
import fhv;
import fhx;
import frq;
import fur;
import fvh;
import fvi;
import fvk;
import gky;
import goj;
import gpu;
import gvb;
import hau;
import ijo;
import ijp;
import iju;
import ijv;
import ika;
import ikb;
import ikd;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import nai;
import naj;
import nak;
import nau;

public class FazerPagamentoConfirmacaoActivity extends goj implements nau {
  private fht A;
  
  private fvh B;
  
  private Boolean C = Boolean.valueOf(false);
  
  private ArrayList<gky> D;
  
  public Dialog a = null;
  
  public String b = "";
  
  public fur c;
  
  private final String f = "FazerPagamentoConfirmacaoActivity";
  
  private FazerPagamentoConfirmacaoActivity g;
  
  private fhv w;
  
  private fvi x;
  
  private fhx y;
  
  private fvk z;
  
  private void a(String paramString) {
    this.C = Boolean.valueOf(true);
    this.b = paramString;
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.replace(2131756346, (Fragment)new ijv());
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
  }
  
  private void b(String paramString) {
    this.C = Boolean.valueOf(true);
    this.b = paramString;
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.replace(2131756346, (Fragment)new ikb());
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
  }
  
  private void d(String paramString) {
    this.C = Boolean.valueOf(true);
    this.b = paramString;
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.replace(2131756346, (Fragment)new ijp());
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
  }
  
  private void g() {
    this.w = new fhv(this, null);
    this.w.execute((Object[])new Void[0]);
  }
  
  private void h() {
    this.C = Boolean.valueOf(true);
    f();
    gvb gvb = new gvb();
    gvb.l("OfferCadDebAuto");
    gvb.f((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    gvb.e(this.x.l());
    gvb.d(false);
    gvb.f(true);
    gvb.k("Cadastro em Débito Automático");
    gvb.g("Comprovante - Pagamento realizado com sucesso");
    gvb.a(CadastrarDebitoAutomaticoActivity.class);
    gvb.b(this.D);
    gvb.c(getString(2131298968));
    if (hau.a().z()) {
      gvb.d("Pagamento agendado com sucesso");
    } else {
      gvb.d("Pagamento realizado com sucesso");
    } 
    Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)gvb);
    startActivity(intent);
    s();
  }
  
  private void i() {
    this.y = new fhx(this, null);
    this.y.execute((Object[])new Void[0]);
  }
  
  private void j() {
    this.C = Boolean.valueOf(true);
    if (this.c != null)
      (new fhs(this)).execute((Object[])new fur[] { this.c }); 
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.replace(2131756346, (Fragment)new ikd());
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
    s();
  }
  
  private void n() {
    this.A = new fht(this, null);
    this.A.execute((Object[])new Void[0]);
  }
  
  private void o() {
    this.C = Boolean.valueOf(true);
    s();
    p();
  }
  
  private void p() {
    ArrayList<gky> arrayList = new ArrayList();
    gky gky = new gky("Chave Única:", this.B.w());
    gky.a(true);
    arrayList.add(gky);
    arrayList.add(new gky("Valor do Título:", naj.f(this.B.u())));
    arrayList.add(new gky("Valor Custas e Emolumento:", naj.f(this.B.a())));
    arrayList.add(new gky("Valor Total do Título:", naj.f(this.B.m())));
    arrayList.add(new gky("CNPJ/CPF do Pagador:", nai.c(this.B.z())));
    gky = new gky("Nome ou Razão Social do Pagador:", this.B.v());
    gky.a(true);
    arrayList.add(gky);
    gky = new gky("Número de Identificação do Cartório:", this.B.k());
    gky.a(true);
    arrayList.add(gky);
    arrayList.add(new gky("UF:", this.B.b()));
    arrayList.add(new gky("Município:", this.B.f()));
    arrayList.add(new gky("Número do Protocolo:", this.B.j()));
    arrayList.add(new gky("Data do Protocolo:", nak.l(this.B.d())));
    arrayList.add(new gky("Data Limite do Pagamento:", nak.l(this.B.c())));
    arrayList.add(new gky("Número do Título:", this.B.l()));
    arrayList.add(new gky("Espécie do Título:", this.B.g()));
    arrayList.add(new gky("Data de Vencimento do Título:", this.B.y()));
    gky = new gky("Nome ou Razão Social do Avalista:", this.B.i());
    gky.a(true);
    arrayList.add(gky);
    gky = new gky("Instituição Financeira Destinatária:", this.B.h());
    gky.a(true);
    arrayList.add(gky);
    gvb gvb = new gvb();
    gvb.f((new SimpleDateFormat("dd/MM/yyyy HH:mm:ss")).format(new Date()));
    gvb.e(this.B.x());
    gvb.d(false);
    gvb.g("Comprovante - Pagamento de Título em Cartório");
    gvb.b(arrayList);
    gvb.c(getString(2131298995));
    String str = " realizado com sucesso";
    if (hau.a().z())
      str = " agendado com sucesso"; 
    gvb.d(getString(2131298995) + str);
    gvb.k(true);
    q();
    Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
    intent.putExtra("comprovanteBase", (Serializable)gvb);
    startActivity(intent);
  }
  
  private void q() {
    frq.d("Pagamentos_Pagamento_DataDePagamento", nak.l(this.B.d()));
    frq.a("Pagamentos_Pagamento_TitulosEmCatorio_ValorDePagamento", Double.parseDouble(this.B.m()));
    frq.d("Pagamentos_Pagamento_TitulosEmCatorio_ReferOper", this.B.x());
  }
  
  private void r() {
    if (this.a != null && this.a.isShowing()) {
      this.a.cancel();
      this.a = null;
    } 
  }
  
  private void s() {
    SharedPreferences.Editor editor = getSharedPreferences("avaliacaoApp", 0).edit();
    editor.putBoolean("transacaoKey", true);
    editor.commit();
  }
  
  public fur a() {
    return this.c;
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    switch (paramInt) {
      default:
        return;
      case 0:
        g();
        return;
      case 1:
        i();
        return;
      case 2:
        break;
    } 
    n();
  }
  
  public void a(fur paramfur) {
    this.c = paramfur;
  }
  
  public void a(fvh paramfvh) {
    this.B = paramfvh;
  }
  
  public void a(fvi paramfvi) {
    this.x = paramfvi;
  }
  
  public void a(fvk paramfvk) {
    this.z = paramfvk;
  }
  
  public boolean a(Context paramContext) {
    boolean bool = false;
    List list = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < list.size()) {
        if (((ActivityManager.RunningAppProcessInfo)list.get(i)).processName.equals("com.santander.app")) {
          onDestroy();
          Process.killProcess(Process.myPid());
          return true;
        } 
      } else {
        return bool1;
      } 
    } 
  }
  
  public String b() {
    return a(2131756346);
  }
  
  public fvi c() {
    return this.x;
  }
  
  public void confirmacaoCartorioDone(View paramView) {
    frq.d("Pagamentos_Pagamento_TitulosEmCatorio_Confirmacao_Acao", "Confirmar");
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
    validacionOperacionFragment.b(2);
    fragmentTransaction.replace(2131756346, (Fragment)validacionOperacionFragment);
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
  }
  
  public void confirmacaoContasDone(View paramView) {
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
    validacionOperacionFragment.b(0);
    fragmentTransaction.replace(2131756346, (Fragment)validacionOperacionFragment);
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
  }
  
  public void confirmacaoTitulosDone(View paramView) {
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
    validacionOperacionFragment.b(1);
    fragmentTransaction.replace(2131756346, (Fragment)validacionOperacionFragment);
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
  }
  
  public fvk d() {
    return this.z;
  }
  
  public fvh e() {
    return this.B;
  }
  
  public void f() {
    gky gky1;
    String str4 = this.x.c();
    String str3 = this.x.c().substring(0, this.x.c().length() / 2) + " " + this.x.c().substring(this.x.c().length() / 2);
    String str2 = str3;
    if (str4 != null) {
      str2 = str3;
      if (str4.length() > 37) {
        str2 = "" + str4.substring(0, 12);
        str2 = str2 + " " + str4.substring(12, 24);
        str2 = str2 + " " + str4.substring(24, 36);
        str2 = str2 + " " + str4.substring(36);
      } 
    } 
    this.D = new ArrayList<gky>();
    gky gky2 = new gky("Código de barras:", str2);
    gky2.a(true);
    this.D.add(gky2);
    gky2 = new gky("Empresa:", this.x.f());
    gky2.a(true);
    this.D.add(gky2);
    gky2 = new gky("Valor:", this.x.q());
    this.D.add(gky2);
    if (this.x.s()) {
      gky2 = new gky("Forma de Pagamento:", getResources().getString(2131296974));
      this.D.add(gky2);
    } else {
      gky2 = new gky("Forma de Pagamento:", getResources().getString(2131296975));
      this.D.add(gky2);
    } 
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    String str1 = this.x.g();
    try {
      String str = simpleDateFormat1.format(simpleDateFormat2.parse(str1));
      str1 = str;
    } catch (ParseException parseException) {
      Log.e("Error", parseException.getMessage());
    } 
    if (this.x.b().equals("true")) {
      gky1 = new gky("Data de Agendamento:", str1);
      this.D.add(gky1);
    } else {
      gky1 = new gky("Data de Pagamento:", (String)gky1);
      this.D.add(gky1);
    } 
    if (this.x.s()) {
      gky1 = new gky(getString(2131298332), getString(2131298333));
      this.D.add(gky1);
      gky1 = new gky(getString(2131298334), "");
      this.D.add(gky1);
    } 
  }
  
  public void onBackPressed() {
    if (this.C.booleanValue() && this.v.d()) {
      this.v.c(false);
      finishAffinity();
      a((Context)this);
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969036);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    this.g = this;
    gpu.a((Activity)this, actionBar, getString(2131297441));
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    int i = getIntent().getIntExtra("type_pagamento", 0);
    this.c = new fur();
    this.c = (fur)getIntent().getSerializableExtra("BENEFICIARIO");
    if (i == 0) {
      fragmentTransaction.replace(2131756346, (Fragment)new iju());
    } else if (i == 1) {
      fragmentTransaction.replace(2131756346, (Fragment)new ika());
    } else if (i == 2) {
      fragmentTransaction.replace(2131756346, (Fragment)new ijo());
    } 
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
  }
  
  protected void onDestroy() {
    super.onDestroy();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\FazerPagamentoConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */