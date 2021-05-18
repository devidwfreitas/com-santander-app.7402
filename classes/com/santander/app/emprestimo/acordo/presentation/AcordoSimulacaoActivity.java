package com.santander.app.emprestimo.acordo.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.transition.TransitionManager;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.AppCompatSpinner;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.santander.app.components.view.CheckCardGroup;
import com.santander.app.components.view.CheckCardView;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderTextView;
import gor;
import grs;
import hfr;
import hfx;
import hfy;
import hfz;
import hgu;
import hgv;
import hgw;
import hhb;
import hhc;
import hhr;
import hys;
import java.util.List;
import mxn;

public class AcordoSimulacaoActivity extends grs implements View.OnClickListener, AdapterView.OnItemSelectedListener, RadioGroup.OnCheckedChangeListener, hgw {
  private static final int S = 0;
  
  private SantanderButtonView A;
  
  private CheckCardGroup B;
  
  private CheckCardView C;
  
  private LinearLayout D;
  
  private SantanderTextView E;
  
  private SantanderTextView F;
  
  private SantanderTextView G;
  
  private SantanderTextView H;
  
  private CheckCardView I;
  
  private LinearLayout J;
  
  private SantanderTextView K;
  
  private SantanderTextView L;
  
  private SantanderTextView M;
  
  private SantanderTextView N;
  
  private LinearLayout O;
  
  private hhb P;
  
  private Dialog Q;
  
  private int R;
  
  private hgu a;
  
  private NestedScrollView b;
  
  private RadioGroup c;
  
  private RadioButton d;
  
  private RadioButton e;
  
  private TextView f;
  
  private TextView g;
  
  private FrameLayout w;
  
  private AppCompatSpinner x;
  
  private AppCompatSpinner y;
  
  private AppCompatSpinner z;
  
  private void a(hfx paramhfx, boolean paramBoolean) {
    hhr.c(paramhfx.m());
    String str1 = paramhfx.u();
    String str2 = paramhfx.j().replace("R$", "").trim();
    String str3 = String.format("taxa %s a.m.", new Object[] { paramhfx.r() });
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append(paramhfx.q());
    stringBuilder.append(" de ");
    if (paramBoolean)
      stringBuilder.append("\n"); 
    stringBuilder.append(paramhfx.m());
    this.E.setVisibility(0);
    this.E.setText(str1);
    this.F.setText(str2);
    this.G.setText(stringBuilder);
    this.H.setText(str3);
  }
  
  private void b(hfx paramhfx, boolean paramBoolean) {
    String str1 = paramhfx.v();
    String str2 = paramhfx.t().replace("R$", "").trim();
    String str3 = String.format("taxa %s a.m.", new Object[] { paramhfx.s() });
    StringBuilder stringBuilder = new StringBuilder();
    stringBuilder.append("1x de ");
    if (paramBoolean)
      stringBuilder.append("\n"); 
    stringBuilder.append(paramhfx.t());
    this.K.setVisibility(0);
    this.K.setText(str1);
    this.L.setText(str2);
    this.M.setText(stringBuilder);
    this.N.setText(str3);
  }
  
  private void v() {
    this.a = (hgu)getSupportFragmentManager().findFragmentById(2131755226);
    this.b = (NestedScrollView)findViewById(2131755225);
    this.c = (RadioGroup)findViewById(2131755229);
    this.d = (RadioButton)findViewById(2131755230);
    this.e = (RadioButton)findViewById(2131755231);
    this.f = (TextView)findViewById(2131755232);
    this.g = (TextView)findViewById(2131755228);
    this.w = (FrameLayout)findViewById(2131755233);
    this.x = (AppCompatSpinner)findViewById(2131755234);
    this.y = (AppCompatSpinner)findViewById(2131755235);
    this.z = (AppCompatSpinner)findViewById(2131755236);
    this.A = (SantanderButtonView)findViewById(2131755249);
    this.B = (CheckCardGroup)findViewById(2131755237);
    this.O = (LinearLayout)findViewById(2131755227);
    this.C = (CheckCardView)findViewById(2131755238);
    this.D = (LinearLayout)findViewById(2131755239);
    this.E = (SantanderTextView)findViewById(2131755240);
    this.F = (SantanderTextView)findViewById(2131755209);
    this.G = (SantanderTextView)findViewById(2131755241);
    this.H = (SantanderTextView)findViewById(2131755242);
    this.I = (CheckCardView)findViewById(2131755243);
    this.J = (LinearLayout)findViewById(2131755244);
    this.K = (SantanderTextView)findViewById(2131755245);
    this.L = (SantanderTextView)findViewById(2131755246);
    this.M = (SantanderTextView)findViewById(2131755247);
    this.N = (SantanderTextView)findViewById(2131755248);
    this.c.setOnCheckedChangeListener(this);
    this.A.setOnClickListener(this);
    this.B.setOnCheckedChangeListener((gor)new hgv(this));
    this.z.setOnItemSelectedListener(this);
    this.x.setOnItemSelectedListener(this);
    this.y.setOnItemSelectedListener(this);
  }
  
  private void w() {
    this.w.setVisibility(8);
    this.f.setText(getString(2131296364));
  }
  
  private void x() {
    this.w.setVisibility(0);
    this.f.setText(getString(2131296365));
  }
  
  public void a() {
    if (this.a == null)
      return; 
    this.b.scrollTo(0, 0);
    this.a.a();
  }
  
  public void a(@StringRes int paramInt) {
    this.O.setVisibility(0);
    this.c.setVisibility(8);
    this.g.setText(paramInt);
  }
  
  public void a(hfx paramhfx) {
    this.C.setVisibility(0);
    this.I.setVisibility(8);
    this.C.setChecked(true);
    a(paramhfx, false);
    this.D.setGravity(8388627);
    this.E.setTextSize(18.0F);
    this.F.setTextSize(34.0F);
    this.G.setTextSize(20.0F);
    this.H.setTextSize(18.0F);
  }
  
  public void a(hfy paramhfy) {
    startActivity(new Intent((Context)this, AcordoContratacaoActivity.class));
  }
  
  public void a(hfz paramhfz) {
    if (this.a == null)
      return; 
    this.a.a(paramhfz);
  }
  
  public void a(List<String> paramList) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969470, paramList);
    if (u() == 0) {
      String str = (String)arrayAdapter.getItem(0);
      arrayAdapter.clear();
      arrayAdapter.add(str);
    } 
    arrayAdapter.setDropDownViewResource(2130969469);
    this.x.setAdapter((SpinnerAdapter)arrayAdapter);
  }
  
  public void a(List<String> paramList, int paramInt) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969470, paramList);
    arrayAdapter.setDropDownViewResource(2130969469);
    this.y.setAdapter((SpinnerAdapter)arrayAdapter);
    AppCompatSpinner appCompatSpinner = this.y;
    if (paramInt == -1)
      paramInt = 0; 
    appCompatSpinner.setSelection(paramInt);
  }
  
  public void b() {
    if (this.a == null)
      return; 
    this.a.b();
  }
  
  public void b(@hfr int paramInt) {
    if (paramInt == 2) {
      this.e.setChecked(true);
      w();
      return;
    } 
    if (paramInt == 1) {
      this.d.setChecked(true);
      x();
      return;
    } 
  }
  
  public void b(hfx paramhfx) {
    this.C.setVisibility(8);
    this.I.setVisibility(0);
    this.I.setChecked(true);
    b(paramhfx, false);
    this.J.setGravity(8388627);
    this.K.setTextSize(18.0F);
    this.L.setTextSize(34.0F);
    this.M.setTextSize(20.0F);
    this.N.setTextSize(18.0F);
  }
  
  public void b(List<String> paramList, int paramInt) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969470, paramList);
    arrayAdapter.setDropDownViewResource(2130969469);
    this.z.setAdapter((SpinnerAdapter)arrayAdapter);
    AppCompatSpinner appCompatSpinner = this.z;
    if (paramInt == -1)
      paramInt = 0; 
    appCompatSpinner.setSelection(paramInt);
  }
  
  public void c() {
    this.b.setVisibility(0);
  }
  
  public void c(hfx paramhfx) {
    this.C.setVisibility(0);
    this.I.setVisibility(0);
    this.C.setChecked(true);
    a(paramhfx, true);
    b(paramhfx, true);
    this.D.setGravity(17);
    this.E.setTextSize(34.0F);
    this.F.setTextSize(16.0F);
    this.G.setTextSize(14.0F);
    this.H.setTextSize(11.0F);
    this.J.setGravity(17);
    this.K.setTextSize(34.0F);
    this.L.setTextSize(16.0F);
    this.M.setTextSize(14.0F);
    this.N.setTextSize(11.0F);
  }
  
  public void d() {
    this.b.setVisibility(8);
  }
  
  public void d(int paramInt) {
    this.R = paramInt;
  }
  
  public void e() {
    this.B.setVisibility(0);
  }
  
  public void f() {
    this.B.setVisibility(8);
  }
  
  public void g() {
    this.E.setVisibility(8);
  }
  
  public void h() {
    this.K.setVisibility(8);
  }
  
  public boolean i() {
    return this.I.c();
  }
  
  public void j() {
    this.C.setChecked(true);
  }
  
  public void k() {
    this.I.setChecked(true);
  }
  
  public void n() {
    this.A.setEnabled(true);
  }
  
  public void o() {
    this.A.setText(getString(2131296367));
  }
  
  public void onBackPressed() {
    if (this.P.c())
      super.onBackPressed(); 
  }
  
  public void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt) {
    switch (paramInt) {
      default:
        return;
      case 2131755230:
        x();
        hhr.a(true);
        this.P.b(1);
        return;
      case 2131755231:
        break;
    } 
    w();
    hhr.a(false);
    this.P.b(2);
  }
  
  public void onClick(View paramView) {
    switch (paramView.getId()) {
      default:
        return;
      case 2131755249:
        break;
    } 
    this.P.f();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968605);
    c(2131296363);
    v();
    this.P = (hhb)new hhc(this);
    this.P.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.P.b();
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    String str;
    if (paramAdapterView == this.y) {
      str = (String)paramAdapterView.getAdapter().getItem(paramInt);
      hhr.b(str);
      this.P.a(str);
      return;
    } 
    if (str == this.z) {
      str = (String)str.getAdapter().getItem(paramInt);
      hhr.a(str);
      this.P.b(str);
      return;
    } 
    if (str == this.x) {
      this.P.a(paramInt);
      return;
    } 
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public void p() {
    this.A.setText(getString(2131296346));
  }
  
  public void q() {
    this.Q = mxn.b((Activity)this);
  }
  
  public void r() {
    if (this.Q != null) {
      this.Q.dismiss();
      this.Q = null;
    } 
  }
  
  public void s() {
    hys.a((Activity)this, 2131297343, true);
  }
  
  public void t() {
    TransitionManager.beginDelayedTransition((ViewGroup)this.b);
  }
  
  public int u() {
    return this.R;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\acordo\presentation\AcordoSimulacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */