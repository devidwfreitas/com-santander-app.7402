package com.santander.app.cambio.transferenciaexterior.presentation;

import amr;
import amt;
import amy;
import anb;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.components.view.ClickToSelectEditText;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderEditText;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.components.view.floatingTimer.FloatingTimer;
import com.santander.app.contacorrente.domain.Conta;
import frq;
import gaq;
import gaz;
import gba;
import gbc;
import gbw;
import gbx;
import gby;
import gbz;
import gca;
import gcb;
import gce;
import gdk;
import gdl;
import gpd;
import gpu;
import grs;
import gtd;
import gte;
import gti;
import gtx;
import gui;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import mxn;
import mzv;
import naj;

public class CambioActivity extends grs implements View.OnKeyListener, gce, gtx {
  private SantanderTextView A;
  
  private SantanderTextView B;
  
  private SantanderTextView C;
  
  private SantanderTextView D;
  
  private SantanderTextView E;
  
  private TextInputLayout F;
  
  private TextInputLayout G;
  
  private TextInputLayout H;
  
  private SantanderEditText I;
  
  private SantanderEditText J;
  
  private SantanderButtonView K;
  
  private FloatingTimer L;
  
  private SantanderDropDownView M;
  
  private Conta N;
  
  private gdk O;
  
  private ClickToSelectEditText P;
  
  private ClickToSelectEditText Q;
  
  private gaz R;
  
  private gaz S;
  
  private List<gaz> T;
  
  private gte U;
  
  private View.OnClickListener V;
  
  private ImageView W;
  
  private ImageView X;
  
  private gaq Y;
  
  private boolean Z = false;
  
  private LinearLayout a;
  
  private Dialog aa;
  
  private gui ab;
  
  private LinearLayout b;
  
  private LinearLayout c;
  
  private LinearLayout d;
  
  private LinearLayout e;
  
  private LinearLayout f;
  
  private LinearLayout g;
  
  private LinearLayout w;
  
  private LinearLayout x;
  
  private SantanderTextView y;
  
  private SantanderTextView z;
  
  private void a(Context paramContext) {
    this.Y = (gaq)getIntent().getExtras().getSerializable("cambio_dados");
    this.L = (FloatingTimer)findViewById(2131757740);
    this.L.setTimerInterface(this);
    this.L.setOnClickListener(n());
    this.M = (SantanderDropDownView)findViewById(2131755321);
    this.O = (gdk)new gdl(this);
    this.F = (TextInputLayout)findViewById(2131757714);
    this.G = (TextInputLayout)findViewById(2131757722);
    this.H = (TextInputLayout)findViewById(2131757716);
    this.z = (SantanderTextView)findViewById(2131757728);
    this.A = (SantanderTextView)findViewById(2131757735);
    this.C = (SantanderTextView)findViewById(2131757738);
    this.B = (SantanderTextView)findViewById(2131757730);
    this.D = (SantanderTextView)findViewById(2131757732);
    this.E = (SantanderTextView)findViewById(2131757719);
    this.d = (LinearLayout)findViewById(2131757727);
    this.e = (LinearLayout)findViewById(2131757733);
    this.g = (LinearLayout)findViewById(2131757736);
    this.f = (LinearLayout)findViewById(2131757729);
    this.w = (LinearLayout)findViewById(2131757731);
    this.x = (LinearLayout)findViewById(2131757724);
    this.W = (ImageView)findViewById(2131757734);
    this.W.setOnClickListener(n());
    this.X = (ImageView)findViewById(2131757737);
    this.X.setOnClickListener(n());
    this.K = (SantanderButtonView)findViewById(2131757739);
    this.K.setOnClickListener(n());
    this.T = new ArrayList<gaz>();
    this.I = (SantanderEditText)findViewById(2131757717);
    this.I.setOnKeyPreIme(true);
    this.I.setOnKeyListener(this);
    this.c = (LinearLayout)findViewById(2131757718);
    this.b = (LinearLayout)findViewById(2131757721);
    this.y = (SantanderTextView)findViewById(2131757720);
    this.J = (SantanderEditText)findViewById(2131757726);
    gui gui1 = new gui();
    gui1.a((EditText)this.J);
    this.J.addTextChangedListener((TextWatcher)gui1);
    this.P = (ClickToSelectEditText)findViewById(2131757715);
    this.P.setOnItemSelectedListener((gpd)new gbw(this));
    this.Q = (ClickToSelectEditText)findViewById(2131757723);
    this.Q.setOnItemSelectedListener((gpd)new gbx(this));
    this.U = new gte((Activity)this, (gti)new gby(this));
    this.O.a();
  }
  
  private void e() {
    this.Q.setText("");
    this.S = null;
    String str = this.I.getText().toString();
    ArrayList<gaz> arrayList = new ArrayList();
    arrayList.addAll(this.T);
    arrayList.remove(this.R);
    this.Q.setItems(arrayList);
    if (this.R.b().equals(gba.real)) {
      this.Q.setEnabled(true);
      this.Q.setClickable(true);
      this.F.setHint(getApplicationContext().getString(2131296753));
      this.G.setHint(getApplicationContext().getString(2131296754));
    } else {
      this.Q.setEnabled(false);
      this.Q.setClickable(false);
      this.F.setHint(getApplicationContext().getString(2131296754));
      this.G.setHint(getApplicationContext().getString(2131296753));
      for (gaz gaz1 : this.T) {
        if (gaz1.b().equals(gba.real)) {
          this.Q.setText(gaz1.a());
          this.S = gaz1;
          break;
        } 
      } 
      if (this.S == null)
        this.S = f(); 
      p();
    } 
    if (str != null && str.length() > 0)
      h(); 
  }
  
  private gaz f() {
    gaz gaz1 = new gaz();
    gaz1.d("S");
    gaz1.c("15");
    gaz1.a("REAL BRASIL");
    gaz1.b("BRL");
    gaz1.a(gba.real);
    return gaz1;
  }
  
  private void g() {
    p();
  }
  
  private void h() {
    if (this.b.getVisibility() == 8)
      this.b.setVisibility(0); 
  }
  
  private void i() {
    this.b.setVisibility(8);
  }
  
  private void j() {
    this.c.setVisibility(0);
    this.y.setVisibility(0);
    this.J.setVisibility(0);
    this.x.setVisibility(0);
    this.d.setVisibility(0);
    this.e.setVisibility(0);
    this.f.setVisibility(0);
    this.g.setVisibility(0);
    this.w.setVisibility(0);
    this.K.setVisibility(0);
  }
  
  private void k() {
    this.y.setVisibility(8);
    this.c.setVisibility(8);
    this.K.setVisibility(8);
    this.J.setVisibility(4);
    this.x.setVisibility(4);
    this.d.setVisibility(8);
    this.e.setVisibility(8);
    this.f.setVisibility(8);
    this.g.setVisibility(8);
    this.w.setVisibility(8);
    this.L.b();
    this.L.animate().alpha(0.0F);
  }
  
  private View.OnClickListener n() {
    if (this.V == null)
      this.V = (View.OnClickListener)new gbz(this); 
    return this.V;
  }
  
  private void o() {
    this.P.setText("");
    this.I.setText("0");
    this.R = null;
    this.S = null;
    k();
    i();
  }
  
  private void p() {
    String str;
    if (!this.Z) {
      str = this.I.getText().toString();
      if (str.length() > 0 && !str.equals("0,00") && this.S != null && this.R.b().equals(gba.real)) {
        this.Z = true;
        this.O.a(this.N, str, true);
        return;
      } 
    } else {
      return;
    } 
    if (str.length() > 0 && !str.equals("0,00") && this.S != null && this.R != null) {
      this.O.a(this.R, this.S, str, this.Y.o(), this.Y.n());
      return;
    } 
  }
  
  public void a() {
    String str = this.I.getText().toString();
    if (this.R != null && this.S != null && str != null && str.length() > 0) {
      this.Z = true;
      this.O.a(this.R, this.S, str, this.Y.o(), this.Y.n());
    } 
  }
  
  public void a(int paramInt) {
    this.y.setVisibility(paramInt);
  }
  
  public void a(gaq paramgaq) {
    this.L.b();
    Intent intent = new Intent((Context)this, CambioClausulasContratuaisActivity.class);
    intent.putExtra("cambio_dados", (Serializable)paramgaq);
    startActivityForResult(intent, 0);
  }
  
  public void a(gbc paramgbc) {
    mzv.a((View)this.H);
    this.L.setTempoMaximo(300000L);
    this.L.animate().alpha(1.0F);
    this.L.a();
    this.E.setText(paramgbc.j());
    this.J.setText(paramgbc.i());
    this.z.setText(paramgbc.d());
    this.B.setText(paramgbc.e());
    this.D.setText(paramgbc.f());
    this.A.setText(paramgbc.g());
    this.C.setText(paramgbc.h());
    j();
    this.Z = false;
    this.O.a(this.N, paramgbc.h(), false);
  }
  
  public void a(String paramString) {
    this.Z = false;
    this.aa = mxn.a(this.i, paramString, this.i.getResources().getString(2131296719), (View.OnClickListener)new gcb(this));
  }
  
  public void a(List<anb> paramList) {
    this.M.setAdapter((amr)new amy(paramList));
    this.M.setOnItemSelectedListener((amt)new gca(this));
  }
  
  public void b() {
    o();
    this.U.a(gtd.CAMBIO_TIMER_TEMPO_ESGOTADO);
  }
  
  public void b(List<gaz> paramList) {
    this.T.clear();
    this.T.addAll(paramList);
    this.P.setItems(paramList);
  }
  
  public void c() {
    this.Z = false;
    mzv.a(getString(2131296723), (View)this.H);
  }
  
  public void d() {
    k();
    this.U.a(gtd.CAMBIO_SALDO_INSUFICIENTE);
    this.Z = false;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    o();
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968619);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131296766));
    a((Context)this);
  }
  
  protected void onDestroy() {
    this.L.b();
    o();
    super.onDestroy();
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
    k();
    switch (paramKeyEvent.getKeyCode()) {
      default:
        return false;
      case 16:
      case 66:
        break;
    } 
    if (paramKeyEvent.getAction() == 0) {
      if (this.R != null) {
        frq.d("ServicosInternacionais_Cambio_Cambio_MoedaEstrangeiraValor_Acao", naj.P(this.I.getText().toString()));
        h();
      } 
      p();
    } 
  }
  
  protected void onResume() {
    super.onResume();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cambio\transferenciaexterior\presentation\CambioActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */