package com.santander.app.emprestimo.creditopessoal.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.support.transition.TransitionManager;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.AppCompatSpinner;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.santander.app.components.view.CheckCardGroup;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderEditText;
import com.santander.app.components.view.SantanderTextView;
import frq;
import gor;
import grs;
import guj;
import hqp;
import hqq;
import hqr;
import hqs;
import hqt;
import hqu;
import hqv;
import hqw;
import hqx;
import hqy;
import hru;
import hrv;
import hxm;
import hxq;
import hys;
import mxn;
import myt;
import naj;

public class CPSimulacaoActivity extends grs implements AdapterView.OnItemSelectedListener, hqy {
  private AppCompatSpinner A;
  
  private AppCompatSpinner B;
  
  private FrameLayout C;
  
  private AppCompatSpinner D;
  
  private FrameLayout E;
  
  private AppCompatSpinner F;
  
  private CheckCardGroup G;
  
  private CPCardView H;
  
  private ConsignadoCardView I;
  
  private SantanderButtonView J;
  
  private SantanderTextView K;
  
  private SantanderTextView L;
  
  private View M;
  
  private View N;
  
  private View O;
  
  private View P;
  
  private View Q;
  
  private hru R;
  
  private Dialog S;
  
  private FrameLayout a;
  
  private NestedScrollView b;
  
  private LinearLayout c;
  
  private LinearLayout d;
  
  private LinearLayout e;
  
  private LinearLayout f;
  
  private SantanderTextView g;
  
  private TextInputLayout w;
  
  private SantanderEditText x;
  
  private FrameLayout y;
  
  private FrameLayout z;
  
  private void ae() {
    this.a = (FrameLayout)findViewById(2131755225);
    this.b = (NestedScrollView)findViewById(2131755570);
    this.c = (LinearLayout)findViewById(2131757833);
    this.d = (LinearLayout)findViewById(2131757834);
    this.e = (LinearLayout)findViewById(2131755571);
    this.f = (LinearLayout)findViewById(2131755578);
    this.g = (SantanderTextView)findViewById(2131755572);
    this.w = (TextInputLayout)findViewById(2131755575);
    this.x = (SantanderEditText)findViewById(2131755576);
    this.z = (FrameLayout)findViewById(2131755573);
    this.y = (FrameLayout)findViewById(2131755577);
    this.A = (AppCompatSpinner)findViewById(2131755574);
    this.B = (AppCompatSpinner)findViewById(2131755236);
    this.C = (FrameLayout)findViewById(2131755583);
    this.D = (AppCompatSpinner)findViewById(2131755235);
    this.E = (FrameLayout)findViewById(2131755584);
    this.F = (AppCompatSpinner)findViewById(2131755585);
    this.J = (SantanderButtonView)findViewById(2131755526);
    this.K = (SantanderTextView)findViewById(2131755579);
    this.L = (SantanderTextView)findViewById(2131755588);
    this.M = findViewById(2131755586);
    this.c.setVisibility(8);
    this.d.setVisibility(8);
    this.G = (CheckCardGroup)findViewById(2131755580);
    this.H = (CPCardView)findViewById(2131755581);
    this.I = (ConsignadoCardView)findViewById(2131755582);
    this.I.a((View.OnClickListener)new hqp(this));
    ag();
    this.A.setOnItemSelectedListener(this);
    this.B.setOnItemSelectedListener(this);
    this.D.setOnItemSelectedListener(this);
    this.F.setOnItemSelectedListener(this);
    this.J.setOnClickListener((View.OnClickListener)new hqq(this));
    this.G.setOnCheckedChangeListener((gor)new hqr(this));
    af();
  }
  
  private void af() {
    this.N = findViewById(2131759608);
    this.O = findViewById(2131759609);
    this.P = findViewById(2131759610);
    this.Q = findViewById(2131759611);
    findViewById(2131755568).setOnClickListener((View.OnClickListener)new hqs(this));
    findViewById(2131755569).setOnClickListener((View.OnClickListener)new hqt(this));
  }
  
  private void ag() {
    ah();
    ai();
    aj();
  }
  
  private void ah() {
    guj guj = new guj(true);
    guj.a((EditText)this.x);
    this.x.addTextChangedListener((TextWatcher)guj);
    this.x.addTextChangedListener((TextWatcher)new hqu(this));
  }
  
  private void ai() {
    this.x.setOnTouchListener((View.OnTouchListener)new hqv(this));
  }
  
  private void aj() {
    this.x.setOnFocusChangeListener((View.OnFocusChangeListener)new hqw(this));
    this.x.setOnEditorActionListener((TextView.OnEditorActionListener)new hqx(this));
  }
  
  private void ak() {
    String str = this.x.getText().toString();
    frq.d("CreditoFinanciamento_Emprestimos_Simulacao_Valor_Acao", naj.P(str));
    this.R.a(str);
  }
  
  private void al() {
    this.x.clearFocus();
    myt.a((Context)this, getCurrentFocus());
  }
  
  public void A() {
    startActivity(new Intent((Context)this, ConsignadoRefinActivity.class));
  }
  
  public void B() {
    a(false);
    this.I.h();
    this.H.f();
  }
  
  public void C() {
    a(true);
    this.G.setVisibility(0);
    if (this.H.getVisibility() == 0 && this.I.getVisibility() == 0) {
      this.K.setVisibility(0);
      return;
    } 
    this.K.setVisibility(8);
  }
  
  public void D() {
    this.G.setVisibility(4);
  }
  
  public void E() {
    a(getString(2131297343), true);
  }
  
  public void F() {
    if (this.S == null)
      this.S = mxn.b((Activity)this); 
  }
  
  public void G() {
    if (this.S != null) {
      this.S.dismiss();
      this.S = null;
    } 
  }
  
  public void H() {
    this.H.setVisibility(8);
  }
  
  public void I() {
    this.I.setVisibility(8);
  }
  
  public void J() {
    this.H.setVisibility(0);
  }
  
  public void K() {
    this.I.setVisibility(0);
  }
  
  public void L() {
    this.H.setChecked(true);
  }
  
  public void M() {
    this.H.setChecked(false);
  }
  
  public void N() {
    this.I.setChecked(true);
  }
  
  public void O() {
    this.I.setChecked(false);
  }
  
  public void P() {
    this.I.e();
  }
  
  public void Q() {
    this.I.f();
  }
  
  public void R() {
    this.I.a(false);
    this.H.a(false);
  }
  
  public void S() {
    this.I.a(false);
    this.H.a(true);
    this.H.setChecked(true);
    r();
  }
  
  public void T() {
    this.H.a(false);
    this.I.a(true);
    this.I.setChecked(true);
    s();
  }
  
  public void U() {
    startActivityForResult(new Intent((Context)this, ConsignadoDadosObrigatoriosActivity.class), 200);
  }
  
  public boolean V() {
    return this.H.c();
  }
  
  public boolean W() {
    return this.I.c();
  }
  
  public void X() {
    this.H.a(true);
    this.I.a(false);
  }
  
  public void Y() {
    this.H.a(false);
    this.I.a(true);
  }
  
  public void Z() {
    this.N.setVisibility(8);
  }
  
  public Context a() {
    return (Context)this;
  }
  
  public void a(int paramInt) {
    this.B.setSelection(paramInt);
  }
  
  public void a(hxm paramhxm, boolean paramBoolean) {
    this.H.a(paramhxm, paramBoolean);
  }
  
  public void a(hxq paramhxq, boolean paramBoolean) {
    this.I.a(paramhxq, paramBoolean);
  }
  
  public void a(String paramString) {
    this.g.setText(paramString);
  }
  
  public void a(String paramString, boolean paramBoolean) {
    hys.a((Activity)this, paramString, paramBoolean);
  }
  
  public void a(boolean paramBoolean) {
    this.G.a(paramBoolean);
  }
  
  public void a(String... paramVarArgs) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969470, (Object[])paramVarArgs);
    arrayAdapter.setDropDownViewResource(2130969469);
    this.A.setAdapter((SpinnerAdapter)arrayAdapter);
  }
  
  public void aa() {
    this.N.setVisibility(0);
    this.O.setVisibility(0);
    this.P.setVisibility(8);
    this.Q.setVisibility(8);
  }
  
  public void ab() {
    this.N.setVisibility(0);
    this.O.setVisibility(8);
    this.P.setVisibility(0);
    this.Q.setVisibility(8);
  }
  
  public void ac() {
    this.N.setVisibility(0);
    this.O.setVisibility(8);
    this.P.setVisibility(8);
    this.Q.setVisibility(0);
  }
  
  public void ad() {
    startActivity(new Intent((Context)this, CPRetentionActivity.class));
  }
  
  public void b() {
    this.M.setVisibility(0);
  }
  
  public void b(int paramInt) {
    this.D.setSelection(paramInt);
  }
  
  public void b(String paramString) {
    this.x.setText(paramString);
    ak();
  }
  
  public void b(String... paramVarArgs) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969470, (Object[])paramVarArgs);
    arrayAdapter.setDropDownViewResource(2130969469);
    this.B.setAdapter((SpinnerAdapter)arrayAdapter);
  }
  
  public void c() {
    this.M.setVisibility(8);
  }
  
  public void c(String... paramVarArgs) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969470, (Object[])paramVarArgs);
    arrayAdapter.setDropDownViewResource(2130969469);
    this.D.setAdapter((SpinnerAdapter)arrayAdapter);
  }
  
  public void d() {
    this.L.setText(getString(2131297288));
  }
  
  public void d(String paramString) {
    f(getString(2131297060, new Object[] { paramString }));
  }
  
  public void d(String... paramVarArgs) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969470, (Object[])paramVarArgs);
    arrayAdapter.setDropDownViewResource(2130969469);
    this.F.setAdapter((SpinnerAdapter)arrayAdapter);
  }
  
  public void e() {
    this.L.setText(getString(2131297289));
  }
  
  public void e(String paramString) {
    f(getString(2131297061, new Object[] { paramString }));
  }
  
  public void f() {
    this.L.setText(getString(2131297290));
  }
  
  public void f(String paramString) {
    a(paramString, false);
  }
  
  public void g() {
    TransitionManager.beginDelayedTransition((ViewGroup)this.a);
  }
  
  public void h() {
    this.c.setVisibility(0);
    this.b.setVisibility(8);
  }
  
  public void i() {
    this.d.setVisibility(0);
    this.b.setVisibility(8);
  }
  
  public void j() {
    g();
    this.e.setVisibility(0);
    this.z.setVisibility(0);
    this.f.setVisibility(8);
    this.J.setText(2131297064);
    Z();
  }
  
  public void k() {
    g();
    this.e.setVisibility(8);
    this.z.setVisibility(8);
    this.f.setVisibility(0);
    this.J.setText(2131297056);
    C();
  }
  
  public void n() {
    this.w.setVisibility(0);
  }
  
  public void o() {
    this.w.setVisibility(4);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    this.b.scrollTo(0, 0);
    if (paramInt1 == 100) {
      this.R.h();
      return;
    } 
    if (paramInt1 == 200) {
      this.R.b(paramInt2);
      return;
    } 
  }
  
  public void onBackPressed() {
    if (this.R.g())
      super.onBackPressed(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968652);
    this.R = (hru)new hrv(this);
    c(2131297065);
    ae();
    this.R.a();
  }
  
  protected void onDestroy() {
    this.R.b();
    super.onDestroy();
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    String str = (String)paramAdapterView.getAdapter().getItem(paramInt);
    if (paramAdapterView == this.A) {
      this.R.a(paramInt);
    } else if (paramAdapterView == this.B) {
      this.R.b(str);
    } else if (paramAdapterView == this.D) {
      this.R.c(str);
    } else if (paramAdapterView == this.F) {
      this.R.d(str);
    } 
    al();
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public void p() {
    this.y.setVisibility(0);
  }
  
  public void q() {
    this.y.setVisibility(4);
  }
  
  public void r() {
    this.C.setVisibility(0);
    this.E.setVisibility(8);
  }
  
  public void s() {
    this.E.setVisibility(0);
    this.C.setVisibility(8);
  }
  
  public void t() {
    this.J.setEnabled(true);
  }
  
  public void u() {
    this.J.setEnabled(false);
  }
  
  public void v() {
    this.B.setEnabled(true);
  }
  
  public void w() {
    this.B.setEnabled(false);
  }
  
  public void x() {
    this.D.setEnabled(true);
  }
  
  public void y() {
    this.D.setEnabled(false);
  }
  
  public void z() {
    startActivity(new Intent((Context)this, CPContratacaoActivity.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\CPSimulacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */