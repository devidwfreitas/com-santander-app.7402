package com.santander.app.seguros.ui.contract.activities;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.util.Log;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.consultative.activities.MyInsurancesV2Activity;
import com.santander.app.seguros.ui.widgets.liquidindicator.LiquidIndicatorView;
import frq;
import gpu;
import grs;
import kqg;
import kry;
import kws;
import kxd;
import kxl;
import kye;
import kyf;
import lix;
import liy;
import liz;
import lja;
import ljb;
import ljc;
import ljd;
import lje;
import ljf;
import lou;
import loy;
import mfn;
import mgt;
import mhj;
import mhz;

public class ContractActivity extends grs {
  public static final String a = "contract-summary-step-tag";
  
  public static final String b = "contract-summary-beneficiaries-tag";
  
  public static final String c = "quotation-is-tag";
  
  public static final String d = "question-tag";
  
  public static final String e = "offers_is_tag";
  
  private boolean A = true;
  
  private String B;
  
  private Dialog C;
  
  private boolean D = false;
  
  private boolean E = false;
  
  private mhz f = new mhz();
  
  private MultiStateLayout g;
  
  private LiquidIndicatorView w;
  
  private NestedScrollView x;
  
  private kye y;
  
  private kry z;
  
  private void a(String paramString) {
    a(true);
    kqg kqg = new kqg();
    kqg.d("");
    kqg.e("939");
    kqg.f("");
    this.y.a(paramString, kqg, (kxl)new lix(this, paramString), (kxl)new liy(this));
  }
  
  private void b(String paramString) {
    try {
      if (isFinishing())
        return; 
      this.g.setState(aor.CONTENT);
      a(false);
      if (TextUtils.isEmpty(paramString))
        paramString = getResources().getString(2131297122); 
      mhj.c((Context)this, paramString);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void d(String paramString) {
    try {
      if (isFinishing())
        return; 
      this.g.setState(aor.ERROR);
      a(false);
      TextView textView = (TextView)this.g.findViewById(2131757215);
      if (TextUtils.isEmpty(paramString))
        paramString = getResources().getString(2131297122); 
      textView.setText(paramString);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void j() {
    try {
      ActionBar actionBar = getSupportActionBar();
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getString(2131297580));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void k() {
    n();
  }
  
  private void n() {
    String str1 = getResources().getString(2131298416);
    String str2 = getResources().getString(2131298654);
    String str3 = getResources().getString(2131297499);
    this.w.a(new String[] { str1, str2, str3 });
  }
  
  private void o() {
    this.g = (MultiStateLayout)findViewById(2131755279);
    this.w = (LiquidIndicatorView)findViewById(2131757481);
    this.x = (NestedScrollView)findViewById(2131755167);
  }
  
  private void p() {
    this.y.a((kxl)new liz(this), (kxl)new lja(this));
  }
  
  public void a(Context paramContext, String paramString) {
    if (paramContext != null) {
      AlertDialog alertDialog = (new AlertDialog.Builder(paramContext)).setTitle(null).setMessage(paramString).setCancelable(false).setPositiveButton("OK", (DialogInterface.OnClickListener)new lje(this)).create();
      alertDialog.setOnShowListener((DialogInterface.OnShowListener)new ljf(this, alertDialog, paramContext));
      alertDialog.show();
    } 
  }
  
  public void a(Fragment paramFragment, String paramString) {
    getSupportFragmentManager().beginTransaction().setCustomAnimations(2131034148, 2131034149, 2131034147, 2131034150).replace(2131755534, paramFragment, paramString).addToBackStack(paramString).commit();
  }
  
  public void a(Runnable paramRunnable1, Runnable paramRunnable2) {
    if (paramRunnable1 != null)
      paramRunnable1.run(); 
    lou lou = lou.b();
    lou.a((loy)new ljd(this, paramRunnable2));
    a((Fragment)lou, "contract-summary-beneficiaries-tag");
  }
  
  public void a(mfn parammfn, boolean paramBoolean) {
    this.w.a(parammfn, paramBoolean);
  }
  
  public void a(boolean paramBoolean) {
    if (paramBoolean) {
      if (this.C == null)
        this.C = mhj.a(this); 
      if (this.C != null && !this.C.isShowing())
        this.C.show(); 
      return;
    } 
    if (this.C != null && this.C.isShowing()) {
      this.C.dismiss();
      return;
    } 
  }
  
  public boolean a() {
    return this.A;
  }
  
  public NestedScrollView b() {
    return this.x;
  }
  
  public void b(boolean paramBoolean) {
    this.E = paramBoolean;
  }
  
  public mhz c() {
    return this.f;
  }
  
  public void c(boolean paramBoolean) {
    this.D = paramBoolean;
  }
  
  public void d() {
    getSupportFragmentManager().popBackStackImmediate();
  }
  
  public void e() {
    this.w.c();
  }
  
  public kxl<String> f() {
    return (kxl<String>)new ljb(this);
  }
  
  public kxl<String> g() {
    return (kxl<String>)new ljc(this);
  }
  
  public void h() {
    getSupportFragmentManager().popBackStackImmediate("offers_is_tag", 0);
    this.w.b();
    this.w.a(mfn.WAVE_GREEN_ONE, false);
  }
  
  public String i() {
    return this.B;
  }
  
  public void onBackPressed() {
    if (getSupportFragmentManager().getBackStackEntryCount() <= 1) {
      finish();
      return;
    } 
    if (this.g.a() == aor.CONTENT) {
      if (this.D) {
        this.D = false;
        kws.a().b().a(new kxd(true));
      } 
      if (!this.E) {
        this.w.c();
        this.A = true;
        super.onBackPressed();
        return;
      } 
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968645);
    j();
    o();
    k();
    if (getIntent() != null && getIntent().getExtras().containsKey(MyInsurancesV2Activity.a))
      this.B = getIntent().getExtras().getString(MyInsurancesV2Activity.a); 
    this.y = (kye)new kyf();
    if (mgt.b(this.B)) {
      this.B = "AP";
      Log.e("AP", "TelaContratacaoAP");
      frq.d("Seguros_Contratacao_Vida_Acao", "TelaContratacaoAP");
    } 
    if (mgt.d(this.B))
      this.B = "VIDA"; 
    a(this.B);
    p();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\contract\activities\ContractActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */