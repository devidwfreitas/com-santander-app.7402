package com.santander.app.emprestimo.creditopessoal.presentation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.transition.TransitionManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.NestedScrollView;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.MinhaConta;
import com.santander.app.comprovantes.activity.ComprovanteBaseActivity;
import com.santander.app.emprestimo.creditopessoal.domain.CPContratacao;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;
import frq;
import gky;
import grs;
import gvb;
import hql;
import hrl;
import hrm;
import htz;
import java.io.Serializable;
import java.util.ArrayList;
import nau;

public class CPContratacaoActivity extends grs implements hql, nau {
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private TextView D;
  
  private TextView E;
  
  private TextView F;
  
  private TextView G;
  
  private CheckBox H;
  
  private CheckBox I;
  
  private Button J;
  
  private Button K;
  
  private LinearLayout L;
  
  private LinearLayout M;
  
  private LinearLayout N;
  
  private LinearLayout O;
  
  private LinearLayout P;
  
  private RelativeLayout Q;
  
  private LinearLayout R;
  
  private ImageView S;
  
  private View T;
  
  private hrl U;
  
  private boolean V = true;
  
  private htz W;
  
  private NestedScrollView a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private void f() {
    this.a = (NestedScrollView)findViewById(2131755554);
    this.y = (TextView)findViewById(2131755555);
    this.b = (TextView)findViewById(2131757918);
    this.c = (TextView)findViewById(2131757927);
    this.d = (TextView)findViewById(2131757938);
    this.e = (TextView)findViewById(2131757936);
    this.f = (TextView)findViewById(2131757933);
    this.g = (TextView)findViewById(2131757923);
    this.w = (TextView)findViewById(2131757925);
    this.x = (TextView)findViewById(2131757940);
    this.z = (TextView)findViewById(2131757928);
    this.A = (TextView)findViewById(2131757909);
    this.B = (TextView)findViewById(2131757910);
    this.C = (TextView)findViewById(2131757911);
    this.R = (LinearLayout)findViewById(2131757916);
    this.Q = (RelativeLayout)findViewById(2131757912);
    this.D = (TextView)findViewById(2131757913);
    this.E = (TextView)findViewById(2131757914);
    this.H = (CheckBox)findViewById(2131755559);
    this.I = (CheckBox)findViewById(2131757915);
    this.J = (Button)findViewById(2131755561);
    this.K = (Button)findViewById(2131755558);
    this.M = (LinearLayout)findViewById(2131755593);
    this.L = (LinearLayout)findViewById(2131757939);
    this.N = (LinearLayout)findViewById(2131757919);
    this.F = (TextView)findViewById(2131757920);
    this.S = (ImageView)findViewById(2131757931);
    this.O = (LinearLayout)findViewById(2131757921);
    this.G = (TextView)findViewById(2131756333);
    this.P = (LinearLayout)findViewById(2131757929);
    this.T = findViewById(2131755557);
    this.H.setOnClickListener((View.OnClickListener)this);
    this.I.setOnClickListener((View.OnClickListener)this);
    this.A.setOnClickListener((View.OnClickListener)this);
    this.B.setOnClickListener((View.OnClickListener)this);
    this.C.setOnClickListener((View.OnClickListener)this);
    this.D.setOnClickListener((View.OnClickListener)this);
    this.J.setOnClickListener((View.OnClickListener)this);
    this.K.setOnClickListener((View.OnClickListener)this);
    this.S.setOnClickListener((View.OnClickListener)this);
  }
  
  private void g() {
    FragmentManager fragmentManager = getSupportFragmentManager();
    Fragment fragment = fragmentManager.findFragmentById(2131755593);
    this.M.setVisibility(0);
    if (fragment == null) {
      ValidacionOperacionFragment validacionOperacionFragment = new ValidacionOperacionFragment();
      validacionOperacionFragment.b(1);
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(2131755593, (Fragment)validacionOperacionFragment);
      fragmentTransaction.setTransition(4097);
      fragmentTransaction.commit();
    } 
  }
  
  public void a() {
    this.H.setVisibility(8);
  }
  
  public void a(int paramInt, boolean paramBoolean) {
    try {
      this.U.i();
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
  
  public void a(CPContratacao paramCPContratacao) {
    this.a.scrollTo(0, 0);
    this.b.setText(paramCPContratacao.getValorEntregueFormatted());
    if (paramCPContratacao.isRefinanciamento()) {
      this.R.setBackground(getDrawable(17170445));
    } else {
      this.R.setBackground(ContextCompat.getDrawable(MinhaConta.b(), 2130837732));
    } 
    this.c.setText(paramCPContratacao.getParcelaFormatted());
    this.d.setText(paramCPContratacao.getTaxaCETBreakLineFormatted());
    this.e.setText(paramCPContratacao.getIofFormatted());
    this.f.setText(paramCPContratacao.getTaxaJurosBreakLineFormatted());
    this.g.setText(paramCPContratacao.getValorParcelaFormatted());
    this.w.setText(paramCPContratacao.getDiaPagamentoFormatted());
    this.x.setText(paramCPContratacao.getValorPremioSeguroFormatted());
    this.z.setText(paramCPContratacao.getVencimentoFormatted());
    if (paramCPContratacao.isRefinanciamento()) {
      this.N.setVisibility(0);
      this.O.setVisibility(0);
      this.P.setVisibility(0);
      this.F.setText(paramCPContratacao.getValorTotalContractsFormatted());
      this.G.setText(paramCPContratacao.getValorTotalRefinFormatted());
    } 
  }
  
  public void a(gvb paramgvb) {
    if (paramgvb != null) {
      Intent intent = new Intent((Context)this, ComprovanteBaseActivity.class);
      intent.putExtra("comprovanteBase", (Serializable)paramgvb);
      startActivity(intent);
    } 
  }
  
  public void a(String paramString) {
    TransitionManager.beginDelayedTransition((ViewGroup)this.L);
    this.L.setVisibility(8);
    this.y.setText(paramString);
    this.E.setText(2131297070);
    this.E.setText(2131297070);
    this.Q.setVisibility(8);
    this.V = false;
    this.I.setChecked(false);
  }
  
  public void a(ArrayList<gky> paramArrayList) {
    if (paramArrayList != null)
      CPTermosCondicoesActivity.a((Context)this, paramArrayList); 
  }
  
  public void b() {
    this.H.setVisibility(0);
  }
  
  public void b(String paramString) {
    TransitionManager.beginDelayedTransition((ViewGroup)this.L);
    this.L.setVisibility(0);
    this.y.setText(paramString);
    this.E.setText(2131297069);
    this.E.setText(2131297069);
    this.V = true;
    this.Q.setVisibility(0);
    this.H.setChecked(false);
    this.I.setChecked(false);
  }
  
  public void b(ArrayList<gky> paramArrayList) {
    if (paramArrayList != null)
      CPTermoCETActivity.a((Context)this, paramArrayList); 
  }
  
  public void c() {
    this.y.setText(2131298910);
    this.J.setText(2131297015);
    this.Q.setVisibility(8);
    this.L.setVisibility(8);
    this.E.setText(2131297070);
  }
  
  public void d() {
    this.T.setVisibility(0);
  }
  
  public void e() {
    this.T.setVisibility(8);
  }
  
  public void onClick(View paramView) {
    switch (paramView.getId()) {
      default:
        return;
      case 2131755558:
        this.U.k();
        return;
      case 2131757909:
        this.U.e();
        return;
      case 2131757910:
        this.U.h();
        return;
      case 2131757911:
        this.U.f();
        return;
      case 2131757913:
        this.U.g();
        return;
      case 2131755561:
        if (this.I.isChecked()) {
          getSharedPreferences("cardPreferences", 0).edit().putBoolean("wasSimulated", false).commit();
          this.U.a(this.V);
          this.W.a();
          g();
          return;
        } 
        this.U.j();
        return;
      case 2131757931:
        break;
    } 
    startActivity(new Intent((Context)this, ConsignadoEmpAtuaisActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968650);
    this.W = htz.h();
    this.W.b();
    c(2131297051);
    f();
    frq.a("Emprestimos", "Emprestimos");
    this.U = (hrl)new hrm(this);
    this.U.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.U.b();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return super.onOptionsItemSelected(paramMenuItem);
      case 16908332:
        break;
    } 
    finish();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\CPContratacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */