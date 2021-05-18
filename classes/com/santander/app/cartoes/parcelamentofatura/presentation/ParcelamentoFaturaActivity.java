package com.santander.app.cartoes.parcelamentofatura.presentation;

import amr;
import amt;
import amy;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import foh;
import frq;
import ghu;
import ghv;
import ghw;
import gif;
import gig;
import gis;
import git;
import giu;
import giv;
import giw;
import gix;
import gji;
import gjl;
import gjm;
import gmy;
import grs;
import guj;
import java.io.Serializable;
import java.util.List;
import mxn;
import naj;
import nak;

public class ParcelamentoFaturaActivity extends grs implements gji {
  private static final String a = "ParcelamentoFaturaActivity";
  
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private int D;
  
  private ghv E;
  
  private ghw F;
  
  private Button G;
  
  private boolean H;
  
  private boolean I;
  
  private boolean J = false;
  
  private boolean K = true;
  
  private SantanderDropDownView b;
  
  private ghu c;
  
  private gjl d;
  
  private Spinner e;
  
  private Spinner f;
  
  private RelativeLayout g;
  
  private RelativeLayout w;
  
  private EditText x;
  
  private guj y;
  
  private TextView z;
  
  private void b() {
    this.I = false;
    this.H = this.v.f().e().booleanValue();
    this.b = (SantanderDropDownView)findViewById(2131755321);
    this.e = (Spinner)findViewById(2131758334);
    this.f = (Spinner)findViewById(2131758342);
    this.w = (RelativeLayout)findViewById(2131758339);
    this.g = (RelativeLayout)findViewById(2131758335);
    this.x = (EditText)findViewById(2131758338);
    this.z = (TextView)findViewById(2131757925);
    this.A = (TextView)findViewById(2131758326);
    this.B = (TextView)findViewById(2131758328);
    this.C = (TextView)findViewById(2131758330);
    this.G = (Button)findViewById(2131758320);
    this.y = new guj();
    this.y.a(this.x);
    this.x.addTextChangedListener((TextWatcher)this.y);
    this.x.setText("");
    this.x.setOnEditorActionListener((TextView.OnEditorActionListener)new gis(this));
    this.G.setOnClickListener((View.OnClickListener)new git(this));
    if (getIntent().getExtras() != null) {
      this.D = getIntent().getExtras().getInt("indexCartao");
    } else {
      this.D = 0;
    } 
    if (c()) {
      e();
      return;
    } 
    d();
  }
  
  private boolean b(String paramString) {
    return (Float.valueOf(Float.parseFloat(paramString)).floatValue() == 0.0F);
  }
  
  private void c(List<gif> paramList) {
    this.f.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)new gix(this, paramList));
    this.J = true;
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969469, paramList);
    this.f.setAdapter((SpinnerAdapter)arrayAdapter);
  }
  
  private boolean c() {
    return (this.v.f().s().a() != null && ((ghu)this.v.f().s().a().get(0)).A() == null);
  }
  
  private void d() {
    this.d = (gjl)new gjm(this);
    this.d.a();
    this.d.b();
  }
  
  private void e() {
    Dialog dialog = mxn.b((Activity)this);
    this.v.f().t().a((foh)new giu(this, dialog));
  }
  
  private void f() {
    findViewById(2131758319).setVisibility(8);
    this.K = false;
  }
  
  private void g() {
    findViewById(2131758319).setVisibility(0);
    this.K = false;
  }
  
  public void a() {
    frq.d("Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_ValorDaPrimeiraParcela", this.x.getText().toString());
    gif gif = (gif)this.f.getSelectedItem();
    gif.b("true");
    if (this.e.getSelectedItemPosition() > 0) {
      this.F.o("P");
    } else {
      this.F.o("T");
    } 
    Intent intent = new Intent(getApplicationContext(), ParcelamentoFaturaNaoCorrentistaConfirmacaoActivity.class);
    intent.putExtra("calculoParcelarFatura", (Serializable)this.F);
    intent.putExtra("parcelaSelecionada", (Serializable)gif);
    intent.putExtra("cartaoSelecionado", (Serializable)this.c);
    startActivity(intent);
  }
  
  public void a(ghv paramghv) {
    this.z.setText(nak.l(paramghv.g()));
    this.A.setText(naj.f(paramghv.h()));
    this.B.setText(naj.c(paramghv.e(), "true", "###,###,##0.0000"));
    this.C.setText(naj.f(paramghv.i()));
    c(paramghv.k());
    if (b(paramghv.t())) {
      this.x.setText(naj.C(paramghv.u()));
    } else {
      this.x.setText(naj.C(paramghv.t()));
    } 
    this.E = paramghv;
    this.G.setEnabled(true);
  }
  
  public void a(ghw paramghw) {
    this.z.setText(nak.l(paramghw.g()));
    this.A.setText(naj.f(paramghw.h()));
    this.B.setText(naj.c(paramghw.e(), "true", "###,###,##0.0000"));
    this.C.setText(naj.f(paramghw.i()));
    c(paramghw.k());
    if (b(paramghw.t())) {
      this.x.setText(naj.C(paramghw.u()));
    } else {
      this.x.setText(naj.C(paramghw.t()));
    } 
    this.F = paramghw;
    this.G.setEnabled(true);
  }
  
  public void a(gig paramgig) {
    frq.d("Cartoes_ParcelamentoDeFatura_ParcelamentoFixas_Acao", paramgig.s() + " " + paramgig.q());
    frq.d("Cartoes_ParcelamentoDeFatura_Acao", "Confirmar");
    Intent intent = new Intent(getApplicationContext(), ParcelamentoFaturaCorrentistaConfirmacaoActivity.class);
    intent.putExtra("parcelarFatura", (Serializable)paramgig);
    startActivity(intent);
  }
  
  public void a(String paramString) {
    f();
    this.I = true;
    mxn.b((Activity)this, paramString);
  }
  
  public void a(List<ghu> paramList) {
    this.c = paramList.get(this.D);
    paramList = gmy.c();
    this.b.setAdapter((amr)new amy(paramList));
    this.b.setOnItemSelectedListener((amt)new giv(this, paramList));
    this.b.setCurrentItem(paramList.get(this.D));
  }
  
  public void b(List<String> paramList) {
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969469, paramList);
    this.e.setAdapter((SpinnerAdapter)arrayAdapter);
    this.e.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)new giw(this));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969408);
    c("Parcelamento de Fatura");
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cartoes\parcelamentofatura\presentation\ParcelamentoFaturaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */