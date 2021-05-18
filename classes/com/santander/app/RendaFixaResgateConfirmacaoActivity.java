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
import fmw;
import frq;
import fte;
import ftv;
import ftw;
import gky;
import goj;
import gpl;
import gpu;
import gvb;
import ijc;
import java.util.ArrayList;
import java.util.Date;
import naj;
import nak;
import nau;

public class RendaFixaResgateConfirmacaoActivity extends goj implements nau {
  private final String a = "RendaFixaResgateConfirmacaoActivity";
  
  private RendaFixaResgateConfirmacaoActivity b;
  
  private ftw c;
  
  private ftv f;
  
  private fte g;
  
  private Boolean w = Boolean.valueOf(true);
  
  private Dialog x;
  
  private ArrayList<gky> a(ftv paramftv, ftw paramftw) {
    ArrayList<gky> arrayList = new ArrayList();
    arrayList.add(new gky("Produto: ", paramftw.m()));
    arrayList.add(new gky("Valor Liquido: ", naj.f(paramftv.l())));
    arrayList.add(new gky("Taxa (CDI): ", naj.q(paramftw.g())));
    if (paramftw.k()) {
      arrayList.add(new gky("Valor Resgate: ", naj.f(paramftw.h())));
    } else {
      arrayList.add(new gky("Valor Resgate: ", naj.f(paramftw.l())));
    } 
    arrayList.add(new gky("Data Vencimento: ", nak.l(paramftv.c())));
    if (this.c.a() == null || "".equals(this.c.a())) {
      arrayList.add(new gky("Data Contábil: ", nak.l(paramftv.b())));
      return arrayList;
    } 
    arrayList.add(new gky("Data Contábil: ", nak.l(this.c.a())));
    return arrayList;
  }
  
  private void b(String paramString1, String paramString2, String paramString3) {
    frq.a("Investimentos_RendaFixa_Resgate_Valor", Double.parseDouble(paramString1));
    frq.d("Investimentos_RendaFixa_Resgate_Data", paramString2);
    frq.d("Investimentos_RendaFixa_Resgate_ReferOper", paramString3);
  }
  
  private gvb e() {
    gvb gvb = new gvb();
    gvb.c("CDB / LCI");
    gvb.g("Comprovante  - Resgante CDB / LCI");
    if (this.c.b().equalsIgnoreCase("false")) {
      gvb.d("Resgate CDB / LCI\nRealizado com sucesso");
      gvb.b(a(this.f, this.c));
      gvb.d(false);
      gvb.f(gpl.a(new Date(), "dd/MM/yyyy HH:mm:ss"));
      gvb.e(this.f.o());
      gvb.w(true);
      b(this.f.l(), gpl.a(new Date(), "dd/MM/yyyy"), this.f.o());
      return gvb;
    } 
    gvb.d("Resgate CDB / LCI\nAgendado com sucesso");
    gvb.b(a(this.f, this.c));
    gvb.d(false);
    gvb.f(gpl.a(new Date(), "dd/MM/yyyy HH:mm:ss"));
    gvb.e(this.f.o());
    gvb.w(true);
    b(this.f.l(), gpl.a(new Date(), "dd/MM/yyyy"), this.f.o());
    return gvb;
  }
  
  private gvb f() {
    gvb gvb = new gvb();
    gvb.e(true);
    gvb.b("Resgate CDB / LCI\n não realizado com sucesso");
    gvb.f(gpl.a(new Date(), "dd/MM/yyyy HH:mm:ss"));
    gvb.e(this.f.o());
    gvb.w(true);
    return gvb;
  }
  
  private void g() {
    if (this.x != null && this.x.isShowing()) {
      this.x.cancel();
      this.x = null;
    } 
  }
  
  public ftw a() {
    return this.c;
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    ValidacionOperacionFragment validacionOperacionFragment;
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    fragmentTransaction.setTransition(4097);
    switch (paramInt) {
      default:
        return;
      case 0:
        frq.d("Investimentos_RendaFixa_Resgate_Acao", "Confirmar");
        validacionOperacionFragment = new ValidacionOperacionFragment();
        validacionOperacionFragment.b(1);
        fragmentTransaction.replace(2131756356, (Fragment)validacionOperacionFragment);
        fragmentTransaction.addToBackStack(null);
        fragmentTransaction.commit();
        return;
      case 1:
        (new fmw(this, null)).execute((Object[])new Void[0]);
        return;
      case 2:
        break;
    } 
    finish();
  }
  
  public ftv b() {
    return this.f;
  }
  
  public ftv c() {
    return this.f;
  }
  
  public fte d() {
    return this.g;
  }
  
  public void onBackPressed() {
    if (!this.w.booleanValue())
      return; 
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    Intent intent = getIntent();
    this.c = (ftw)intent.getSerializableExtra("simularParameters");
    this.f = (ftv)intent.getSerializableExtra("SimularResgateRendaFixaBean");
    this.g = (fte)intent.getSerializableExtra("DadosResgateListAplicacaoRendaFixaBean");
    this.b = this;
    setContentView(2130969236);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131298475));
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(2131756356) == null) {
      ijc ijc = new ijc();
      ijc.a(this.b);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131756356, (Fragment)ijc);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\RendaFixaResgateConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */