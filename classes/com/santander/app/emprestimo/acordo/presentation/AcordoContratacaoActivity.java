package com.santander.app.emprestimo.acordo.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import grs;
import hff;
import hfg;
import hfy;
import hgb;
import hgq;
import hgr;
import hgs;
import hgy;
import hgz;
import hhr;
import hys;
import java.util.List;
import mxn;
import nau;

public class AcordoContratacaoActivity extends grs implements hfg, hgs, nau {
  private SantanderTextView A;
  
  private SantanderTextView B;
  
  private SantanderTextView C;
  
  private SantanderTextView D;
  
  private LinearLayout E;
  
  private RecyclerView F;
  
  private CheckBox G;
  
  private SantanderButtonView H;
  
  private NestedScrollView I;
  
  private LinearLayout J;
  
  private ValidacionOperacionFragment K;
  
  private hgy L;
  
  private Dialog M;
  
  private SantanderTextView a;
  
  private SantanderTextView b;
  
  private SantanderTextView c;
  
  private SantanderTextView d;
  
  private SantanderTextView e;
  
  private SantanderTextView f;
  
  private SantanderTextView g;
  
  private SantanderTextView w;
  
  private SantanderTextView x;
  
  private SantanderTextView y;
  
  private SantanderTextView z;
  
  private void i() {
    this.a = (SantanderTextView)findViewById(2131755206);
    this.b = (SantanderTextView)findViewById(2131755207);
    this.c = (SantanderTextView)findViewById(2131755208);
    this.d = (SantanderTextView)findViewById(2131755209);
    this.e = (SantanderTextView)findViewById(2131755210);
    this.f = (SantanderTextView)findViewById(2131755211);
    this.g = (SantanderTextView)findViewById(2131755212);
    this.w = (SantanderTextView)findViewById(2131755213);
    this.x = (SantanderTextView)findViewById(2131755214);
    this.y = (SantanderTextView)findViewById(2131755215);
    this.z = (SantanderTextView)findViewById(2131755216);
    this.A = (SantanderTextView)findViewById(2131755217);
    this.D = (SantanderTextView)findViewById(2131755220);
    this.B = (SantanderTextView)findViewById(2131755218);
    this.C = (SantanderTextView)findViewById(2131755221);
    this.E = (LinearLayout)findViewById(2131755219);
    this.F = (RecyclerView)findViewById(2131755222);
    this.G = (CheckBox)findViewById(2131755223);
    this.H = (SantanderButtonView)findViewById(2131755224);
    this.J = (LinearLayout)findViewById(2131755593);
    this.I = (NestedScrollView)findViewById(2131755205);
    this.G.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new hgq(this));
    this.H.setOnClickListener((View.OnClickListener)new hgr(this));
    this.G.setChecked(false);
  }
  
  private void j() {
    this.J.setVisibility(0);
    this.I.setVisibility(8);
  }
  
  private void k() {
    this.J.setVisibility(8);
    this.I.setVisibility(0);
  }
  
  public void a() {
    this.H.setEnabled(true);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    hhr.d();
    this.L.c();
  }
  
  public void a(hfy paramhfy) {
    this.b.setText(getString(2131296348, new Object[] { paramhfy.B() }));
    this.c.setText(String.valueOf(paramhfy.C()));
    this.e.setText(String.valueOf(paramhfy.q()));
    this.d.setText(paramhfy.k());
    this.f.setText(paramhfy.D());
    this.g.setText(String.valueOf(paramhfy.E()));
    this.w.setText(paramhfy.l());
    this.x.setText(paramhfy.F());
    this.y.setText(paramhfy.G());
    this.A.setText(paramhfy.I());
    this.B.setText(paramhfy.J());
  }
  
  public void a(hgb paramhgb) {
    hhr.a(paramhgb);
    TermoCondicaoActivity.a((Context)this, paramhgb);
  }
  
  public void a(String paramString) {
    this.E.setVisibility(0);
    this.D.setVisibility(0);
    this.C.setText(paramString);
  }
  
  public void a(List<hgb> paramList) {
    hff hff = new hff(paramList);
    hff.a(this);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    linearLayoutManager.setAutoMeasureEnabled(true);
    this.F.setHasFixedSize(true);
    this.F.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.F.setAdapter((RecyclerView.Adapter)hff);
  }
  
  public void b() {
    this.H.setEnabled(false);
  }
  
  public void b(hfy paramhfy) {
    AcordoComprovanteActivity.a((Context)this, paramhfy, true);
  }
  
  public void c() {
    this.a.setText(2131296352);
    this.z.setText(2131296351);
  }
  
  public void c(hfy paramhfy) {
    AcordoComprovanteActivity.a((Context)this, paramhfy, false);
  }
  
  public void d() {
    this.D.setVisibility(8);
    this.a.setText(2131296350);
    this.z.setText(2131296349);
  }
  
  public void e() {
    this.M = mxn.b((Activity)this);
  }
  
  public void f() {
    if (this.M != null) {
      this.M.dismiss();
      this.M = null;
    } 
  }
  
  public void g() {
    j();
    if (this.K == null) {
      this.K = new ValidacionOperacionFragment();
      this.K.b(1);
      getSupportFragmentManager().beginTransaction().add(2131755593, (Fragment)this.K).setTransition(4097).commit();
    } 
  }
  
  public void h() {
    hys.a((Activity)this, "Para seguir a contratação é necessário aceitar as condições.", 2131299275, false);
  }
  
  public void onBackPressed() {
    if (this.K != null) {
      k();
      getSupportFragmentManager().beginTransaction().remove((Fragment)this.K).setTransition(8194).commit();
      this.K = null;
      return;
    } 
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968604);
    c(2131296353);
    i();
    this.L = (hgy)new hgz(this);
    this.L.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.L.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\acordo\presentation\AcordoContratacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */