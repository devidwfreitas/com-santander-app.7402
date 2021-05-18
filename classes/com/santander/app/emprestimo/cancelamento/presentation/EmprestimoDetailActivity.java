package com.santander.app.emprestimo.cancelamento.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.transition.TransitionManager;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import gpu;
import hff;
import hfg;
import hgb;
import hmc;
import hmg;
import hmh;
import hmi;
import hmj;
import hmk;
import hmo;
import hmp;
import hnj;
import hnk;
import hxl;
import hxu;
import hys;
import java.io.Serializable;
import java.util.List;
import mxn;

public class EmprestimoDetailActivity extends hmc implements hfg, hmk {
  public static final String a = "EXTRA_CANCELAVEL";
  
  public static final String b = "EXTRA_VALID_AVERBATION";
  
  private ImageView A;
  
  private Button B;
  
  private Button C;
  
  private hmo D;
  
  private Dialog E;
  
  private LinearLayout c;
  
  private LinearLayout d;
  
  private LinearLayout e;
  
  private LinearLayout f;
  
  private RelativeLayout g;
  
  private ScrollView w;
  
  private EditText x;
  
  private RecyclerView y;
  
  private TextView z;
  
  private void a(@hxu int paramInt) {
    setTitle(2131296782);
    this.w.setVisibility(0);
    this.g.setVisibility(8);
    if (paramInt == 10) {
      this.c.setVisibility(0);
      this.f.setVisibility(0);
      this.d.setVisibility(8);
      this.e.setVisibility(8);
      return;
    } 
    if (paramInt == 11) {
      this.d.setVisibility(0);
      this.e.setVisibility(0);
      this.f.setVisibility(8);
      this.c.setVisibility(8);
      return;
    } 
  }
  
  public static void a(Context paramContext, hxl paramhxl) {
    a(paramContext, paramhxl, false);
  }
  
  public static void a(Context paramContext, hxl paramhxl, boolean paramBoolean) {
    Intent intent = new Intent(paramContext, EmprestimoDetailActivity.class);
    intent.putExtra("EXTRA_CANCELAVEL", (Serializable)paramhxl);
    intent.putExtra("EXTRA_VALID_AVERBATION", paramBoolean);
    paramContext.startActivity(intent);
  }
  
  private void h() {
    this.w = (ScrollView)findViewById(2131755225);
    this.c = (LinearLayout)findViewById(2131756820);
    this.d = (LinearLayout)findViewById(2131756799);
    this.e = (LinearLayout)findViewById(2131759554);
    this.g = (RelativeLayout)findViewById(2131755772);
    this.f = (LinearLayout)findViewById(2131755771);
    this.y = (RecyclerView)findViewById(2131759555);
    this.x = (EditText)findViewById(2131755773);
    this.z = (TextView)findViewById(2131756397);
    this.A = (ImageView)findViewById(2131755774);
    this.B = (Button)findViewById(2131755775);
    this.C = (Button)findViewById(2131755770);
    this.x.addTextChangedListener((TextWatcher)new hmg(this));
    i();
  }
  
  private void i() {
    this.A.setOnClickListener((View.OnClickListener)new hmh(this));
    this.B.setOnClickListener((View.OnClickListener)new hmi(this));
    this.C.setOnClickListener((View.OnClickListener)new hmj(this));
    if (this.D.c()) {
      this.C.setVisibility(0);
      return;
    } 
    this.C.setVisibility(8);
  }
  
  private void j() {
    hys.a((Activity)this, 2131298981, getString(2131298136), 2131296639, false);
  }
  
  private void k() {
    setTitle(2131296780);
    this.c.setVisibility(8);
    this.f.setVisibility(8);
    this.d.setVisibility(8);
    this.w.setVisibility(8);
    this.g.setVisibility(0);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    this.D.g();
  }
  
  public void a(hgb paramhgb) {
    TermoCondCancelarEmpActivity.b((Context)this, paramhgb);
    hnj.g();
  }
  
  public void a(hnk paramhnk) {
    this.z.setText(paramhnk.a());
    this.z.setTextColor(ContextCompat.getColor((Context)this, paramhnk.b()));
    ((ImageView)findViewById(2131756399)).setImageResource(paramhnk.c());
  }
  
  public void a(List<hgb> paramList) {
    hff hff = new hff(paramList, 2130968829);
    hff.a(this);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    linearLayoutManager.setAutoMeasureEnabled(true);
    this.y.setHasFixedSize(true);
    this.y.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.y.setAdapter((RecyclerView.Adapter)hff);
  }
  
  public void b() {
    f();
    k();
  }
  
  public void c() {
    hys.a((Activity)this, getString(2131297343), false);
  }
  
  public void d() {
    this.E = mxn.b((Activity)this);
  }
  
  public void d(hxl paramhxl) {
    f();
    a(paramhxl.a());
    ((TextView)findViewById(2131756801)).setText(paramhxl.g());
    ((TextView)findViewById(2131756803)).setText(paramhxl.s());
    ((TextView)findViewById(2131756805)).setText(String.format("%sx", new Object[] { Integer.valueOf(paramhxl.i()) }));
    ((TextView)findViewById(2131756807)).setText(paramhxl.j());
    ((TextView)findViewById(2131756809)).setText(paramhxl.k());
    ((TextView)findViewById(2131756811)).setText(paramhxl.l());
    ((TextView)findViewById(2131756813)).setText(paramhxl.m());
    ((TextView)findViewById(2131756815)).setText(paramhxl.n());
    ((TextView)findViewById(2131756817)).setText(String.format("%s\n%s", new Object[] { paramhxl.o(), paramhxl.p() }));
    ((TextView)findViewById(2131756819)).setText(String.format("%s\n%s", new Object[] { paramhxl.q(), paramhxl.r() }));
  }
  
  public void e() {
    if (this.E != null) {
      this.E.dismiss();
      this.E = null;
    } 
  }
  
  public void e(hxl paramhxl) {
    f();
    a(paramhxl.a());
    ((TextView)findViewById(2131756822)).setText(paramhxl.g());
    ((TextView)findViewById(2131756824)).setText(String.format("%sx", new Object[] { Integer.valueOf(paramhxl.i()) }));
    ((TextView)findViewById(2131756826)).setText(paramhxl.n());
  }
  
  public void f() {
    TransitionManager.beginDelayedTransition((ViewGroup)this.w);
  }
  
  public void f(hxl paramhxl) {
    ((TextView)findViewById(2131756398)).setText(String.format("início: %s", new Object[] { paramhxl.u() }));
    findViewById(2131756400).setVisibility(8);
    findViewById(2131756402).setVisibility(8);
  }
  
  public void g() {
    super.onBackPressed();
  }
  
  public void g(hxl paramhxl) {
    ((TextView)findViewById(2131756401)).setText(String.format("Data de solicitação: %s", new Object[] { paramhxl.u() }));
    findViewById(2131756400).setVisibility(0);
    findViewById(2131756398).setVisibility(4);
    findViewById(2131756402).setVisibility(8);
    findViewById(2131756802).setVisibility(4);
  }
  
  public void h(hxl paramhxl) {
    findViewById(2131756398).setVisibility(4);
    findViewById(2131756400).setVisibility(0);
    ((TextView)findViewById(2131756401)).setText(String.format("Data de solicitação: %s", new Object[] { paramhxl.u() }));
    findViewById(2131756402).setVisibility(0);
    ((TextView)findViewById(2131756403)).setText(String.format("Prazo para aprovação: %s", new Object[] { paramhxl.v() }));
    findViewById(2131756802).setVisibility(4);
  }
  
  public void i(hxl paramhxl) {
    findViewById(2131756400).setVisibility(0);
    ((TextView)findViewById(2131756401)).setText(String.format("Data de solicitação: %s", new Object[] { paramhxl.u() }));
    findViewById(2131756402).setVisibility(0);
    ((TextView)findViewById(2131756403)).setText(String.format("Data de cancelamento: %s", new Object[] { paramhxl.x() }));
    findViewById(2131756398).setVisibility(4);
    findViewById(2131756802).setVisibility(4);
  }
  
  public void j(hxl paramhxl) {
    ((TextView)findViewById(2131756803)).setText(paramhxl.s());
    findViewById(2131756398).setVisibility(4);
    findViewById(2131756400).setVisibility(8);
    findViewById(2131756402).setVisibility(8);
  }
  
  public void k(hxl paramhxl) {
    ((TextView)findViewById(2131756398)).setText(String.format("início: %s", new Object[] { paramhxl.u() }));
    ((TextView)findViewById(2131756803)).setText(paramhxl.s());
    findViewById(2131756398).setVisibility(0);
    findViewById(2131756400).setVisibility(8);
    findViewById(2131756402).setVisibility(8);
  }
  
  public void l(hxl paramhxl) {
    if (paramhxl.f()) {
      ((TextView)findViewById(2131756401)).setText(String.format("Data de solicitação: %s", new Object[] { paramhxl.u() }));
      findViewById(2131756802).setVisibility(4);
    } else {
      ((TextView)findViewById(2131756401)).setText(String.format("Início: %s", new Object[] { paramhxl.u() }));
      findViewById(2131756802).setVisibility(0);
    } 
    findViewById(2131756400).setVisibility(0);
    findViewById(2131756398).setVisibility(4);
    findViewById(2131756402).setVisibility(8);
  }
  
  public void onBackPressed() {
    this.D.h();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968672);
    this.D = (hmo)new hmp(this);
    c(2131296782);
    h();
    this.D.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.D.b();
  }
  
  public void setTitle(@StringRes int paramInt) {
    ActionBar actionBar = getSupportActionBar();
    if (actionBar != null)
      gpu.b(actionBar, getString(paramInt)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\cancelamento\presentation\EmprestimoDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */