package com.santander.app.emprestimo.creditounificado.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.v4.app.Fragment;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.santander.app.emprestimo.acordo.presentation.TermoCondicaoActivity;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import grs;
import hgb;
import hvu;
import hvv;
import hwb;
import hwc;
import hxn;
import hys;
import mxn;
import nau;

public class CPUContratacaoActivity extends grs implements View.OnClickListener, hvv, nau {
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private TextView D;
  
  private TextView E;
  
  private TextView F;
  
  private TextView G;
  
  private TextView H;
  
  private TextView I;
  
  private CheckBox J;
  
  private Button K;
  
  private Button L;
  
  private LinearLayout M;
  
  private LinearLayout N;
  
  private RelativeLayout O;
  
  private hwb a;
  
  private Dialog b;
  
  private ScrollView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private void j() {
    this.c = (ScrollView)findViewById(2131755554);
    this.B = (TextView)findViewById(2131755589);
    this.d = (TextView)findViewById(2131757918);
    this.e = (TextView)findViewById(2131757927);
    this.f = (TextView)findViewById(2131757938);
    this.g = (TextView)findViewById(2131757936);
    this.w = (TextView)findViewById(2131757933);
    this.x = (TextView)findViewById(2131757923);
    this.y = (TextView)findViewById(2131757925);
    this.A = (TextView)findViewById(2131755590);
    this.z = (TextView)findViewById(2131757940);
    this.C = (TextView)findViewById(2131757928);
    this.H = (TextView)findViewById(2131757917);
    this.D = (TextView)findViewById(2131757909);
    this.E = (TextView)findViewById(2131757910);
    this.F = (TextView)findViewById(2131757911);
    this.G = (TextView)findViewById(2131757913);
    this.O = (RelativeLayout)findViewById(2131757912);
    this.I = (TextView)findViewById(2131757914);
    this.I.setVisibility(8);
    this.J = (CheckBox)findViewById(2131757915);
    this.K = (Button)findViewById(2131755591);
    this.L = (Button)findViewById(2131755592);
    this.M = (LinearLayout)findViewById(2131757939);
    this.D.setOnClickListener(this);
    this.E.setOnClickListener(this);
    this.F.setOnClickListener(this);
    this.G.setOnClickListener(this);
    this.K.setOnClickListener(this);
    this.L.setOnClickListener(this);
    this.J.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new hvu(this));
  }
  
  public void a() {
    this.c.scrollTo(0, 0);
    this.K.setText(getString(2131297046));
    this.L.setText(getString(2131297050));
    this.J.setChecked(false);
    this.M.setVisibility(0);
    this.O.setVisibility(0);
  }
  
  public void a(@StringRes int paramInt) {
    this.B.setText(getString(paramInt));
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    try {
      this.a.d();
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
  
  public void a(Spanned paramSpanned) {
    this.A.setText((CharSequence)paramSpanned);
  }
  
  public void a(hgb paramhgb) {
    TermoCondicaoActivity.a((Context)this, paramhgb);
  }
  
  public void a(hxn paramhxn) {
    this.H.setText(getString(2131297240));
    this.d.setText(paramhxn.w());
    this.x.setText(paramhxn.G());
    this.e.setText(paramhxn.u());
    this.w.setText(paramhxn.a(true));
    this.f.setText(paramhxn.b(true));
    this.C.setText(paramhxn.n());
    this.y.setText(paramhxn.K());
    this.g.setText(paramhxn.C());
    this.z.setText(paramhxn.E());
  }
  
  public void a(hxn paramhxn, boolean paramBoolean) {
    CPUComprovanteActivity.a((Context)this, paramhxn, paramBoolean);
  }
  
  public void b() {
    this.c.scrollTo(0, 0);
    this.K.setText(getString(2131297047));
    this.L.setText(getString(2131297049));
    this.J.setChecked(false);
    this.M.setVisibility(8);
    this.O.setVisibility(8);
  }
  
  public void b(hxn paramhxn) {
    CPUTermosCETActivity.a((Context)this, paramhxn);
  }
  
  public void c() {
    if (this.b == null)
      this.b = mxn.b((Activity)this); 
  }
  
  public void d() {
    if (this.b != null) {
      this.b.dismiss();
      this.b = null;
    } 
  }
  
  public void e() {
    hys.a((Activity)this, getString(2131297343), true);
  }
  
  public void f() {
    hys.a((Activity)this, getString(2131298984), false);
  }
  
  public void g() {
    this.K.setText(getString(2131297048));
    this.A.setVisibility(8);
    this.M.setVisibility(8);
    this.O.setVisibility(8);
    this.L.setVisibility(8);
  }
  
  public void h() {
    this.M.setVisibility(0);
    this.O.setVisibility(0);
    this.L.setVisibility(0);
  }
  
  public void i() {
    View view = findViewById(2131755593);
    if (view != null) {
      view.setVisibility(0);
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(1);
      getSupportFragmentManager().beginTransaction().add(2131755593, (Fragment)validacionOperacionFragment).setTransition(4097).addToBackStack(null).commit();
    } 
  }
  
  public void onBackPressed() {
    if (getSupportFragmentManager().getBackStackEntryCount() > 0) {
      getSupportFragmentManager().popBackStack();
      return;
    } 
    super.onBackPressed();
  }
  
  public void onClick(View paramView) {
    switch (paramView.getId()) {
      default:
        return;
      case 2131755591:
        this.a.c();
        return;
      case 2131755592:
        this.a.a((Context)this);
        return;
      case 2131757909:
        this.a.a("cpu_resumo_contratual");
        return;
      case 2131757910:
        this.a.a("cpu_cet");
        return;
      case 2131757911:
        this.a.a("cpu_condicoes_gerais_emprestimo");
        return;
      case 2131757913:
        break;
    } 
    this.a.a("cpu_condicoes_seguro");
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968653);
    c(2131297038);
    j();
    this.a = (hwb)new hwc(this);
    this.a.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditounificado\presentation\CPUContratacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */