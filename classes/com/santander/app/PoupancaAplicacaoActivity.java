package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.ProgressBar;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Carrossel;
import com.santander.app.widget.Indicator;
import fkf;
import fkg;
import fkh;
import fki;
import fkj;
import fkk;
import fom;
import foo;
import fos;
import fot;
import fou;
import fpj;
import fpy;
import frq;
import fsy;
import ftc;
import ftl;
import fuu;
import gpu;
import grs;
import guj;
import gyd;
import gye;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import mxn;
import naj;
import nez;

public class PoupancaAplicacaoActivity extends grs implements nez {
  private PoupancaAplicacaoActivity A;
  
  private ProgressBar B;
  
  private String C;
  
  private boolean D;
  
  private String E;
  
  private fkk F;
  
  private fki G;
  
  private fkj H;
  
  private gyd I;
  
  private int J = 0;
  
  private final String a = "PoupancaAplicacaoActivity";
  
  private EditText b;
  
  private Carrossel c;
  
  private fos d;
  
  private fos e;
  
  private fos f;
  
  private Carrossel g;
  
  private Carrossel w;
  
  private Indicator x;
  
  private ftc y;
  
  private Dialog z;
  
  private void a() {
    Vector<fos> vector = new Vector();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    this.d = new fos();
    this.d.a("APLICAR HOJE");
    this.d.b(simpleDateFormat.format(new Date()));
    this.e = new fos();
    this.e.a("AGENDAR");
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    calendar.add(5, 1);
    this.e.b(simpleDateFormat.format(calendar.getTime()));
    this.e.a(fot.PICKER);
    this.f = new fos();
    this.f.a("Depósito Programado em Poupança");
    this.f.a(fot.DPP);
    vector.add(this.d);
    vector.add(this.e);
    vector.add(this.f);
    fou fou = new fou((Context)this, vector, (Activity)this);
    this.c.setAdapter((fom)fou);
    this.J = 0;
    this.c.b().getViewTreeObserver().addOnScrollChangedListener((ViewTreeObserver.OnScrollChangedListener)new fkg(this, fou));
  }
  
  private void a(EditText paramEditText) {
    guj guj = new guj();
    guj.a(paramEditText);
    paramEditText.addTextChangedListener((TextWatcher)guj);
    paramEditText.setOnClickListener((View.OnClickListener)new fkf(this, paramEditText));
  }
  
  private void a(String paramString1, String paramString2) {
    List list = this.v.f().q().a();
    ArrayList<Conta> arrayList = new ArrayList();
    for (Conta conta : list) {
      if (conta.getAgencia().equals(paramString1) && conta.getCuenta().equals(paramString2))
        arrayList.add(conta); 
    } 
    this.w = (Carrossel)findViewById(2131759255);
    this.w.setVisibility(0);
    foo foo = new foo((Context)this, arrayList);
    this.w.setAdapter((fom)foo);
  }
  
  private void b() {
    this.g = (Carrossel)findViewById(2131757076);
    this.g.setVisibility(0);
    Vector<fpj> vector = new Vector();
    this.x = (Indicator)findViewById(2131757079);
    Vector<ftl> vector1 = this.y.c();
    for (int i = 0; i < vector1.size(); i++) {
      fpj fpj = new fpj();
      fpj.a(this.y.c().get(i));
      vector.add(fpj);
    } 
    if (vector1.size() > 0) {
      a(((ftl)vector1.get(0)).l(), ((ftl)vector1.get(0)).m());
    } else {
      c();
    } 
    vector.add(new fpj());
    this.x.setSize(vector.size());
    this.x.setSelected(0);
    fpy fpy = new fpy((Context)this, vector);
    this.g.setAdapter((fom)fpy);
    this.g.setListener(this);
    a();
    d();
  }
  
  private void c() {
    this.w = (Carrossel)findViewById(2131759255);
    this.w.setVisibility(0);
    List list = this.v.f().q().a();
    this.x = (Indicator)findViewById(2131757079);
    foo foo = new foo((Context)this, list, 2);
    this.w.setListener((nez)new fkh(this));
    this.w.setAdapter((fom)foo);
  }
  
  private void d() {
    if (this.I.f()) {
      gye gye = this.I.p();
      this.b.setText(gye.d());
      this.g.setCurrentItem(gye.b());
      this.w.setCurrentItem(gye.a());
      this.c.setCurrentItem(gye.c());
    } 
    this.I.a();
    this.I.o();
  }
  
  private void e() {
    int i = this.w.a();
    int j = this.g.a();
    int k = this.c.a();
    String str1 = this.C;
    String str2 = this.b.getText().toString();
    this.I.b();
    this.I.a(new gye(i, j, k, str2, str1, false));
  }
  
  public void a(int paramInt) {}
  
  public void b(int paramInt) {
    frq.d("Investimentos_Poupanca_Aplicar_Acao", "SelecionarContaDestino");
    this.x.setSelected(paramInt);
    if (paramInt != this.x.a() - 1) {
      ftl ftl = null;
      Vector<ftl> vector = this.y.c();
      if (vector.size() > this.g.a())
        ftl = vector.get(this.g.a()); 
      a(ftl.l(), ftl.m());
      return;
    } 
    c();
  }
  
  public void goConfirmar(View paramView) {
    String str1;
    boolean bool1;
    boolean bool2;
    if (this.c.a() == 0) {
      str1 = this.d.b();
      bool2 = false;
    } else {
      str1 = this.e.b();
      bool2 = true;
    } 
    Vector<ftl> vector = this.y.c();
    if (vector.size() > this.g.a()) {
      ftl ftl = vector.get(this.g.a());
    } else {
      vector = null;
    } 
    String str3 = this.b.getText().toString();
    String str2 = "0.00";
    if (str3.length() > 0 && !str3.trim().isEmpty()) {
      str2 = naj.m(str3);
      bool1 = false;
    } else {
      mxn.e((Activity)this.A, getResources().getString(2131297203));
      bool1 = true;
    } 
    if (!bool1) {
      if (vector != null) {
        if (this.H != null)
          this.H.cancel(true); 
        this.H = new fkj(this, null);
        this.H.a(str1, bool2, (ftl)vector, str2);
        this.H.execute((Object[])new Void[0]);
        return;
      } 
    } else {
      return;
    } 
    if (this.G != null)
      this.G.cancel(true); 
    this.G = new fki(this, null);
    this.G.a(str1, bool2, str2);
    this.G.execute((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.A = this;
    if (getIntent().getExtras() != null) {
      this.y = (ftc)getIntent().getExtras().get("consultarPosicaoConsolidadaPoupancaList");
    } else {
      this.y = new ftc();
    } 
    setContentView(2130969417);
    this.I = gyd.n();
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131296460));
    this.c = (Carrossel)findViewById(2131759256);
    this.b = (EditText)findViewById(2131756129);
    if (this.y != null && this.y.c() != null && this.y.c().size() == 0) {
      this.B = (ProgressBar)findViewById(2131757077);
      this.F = new fkk(this, null);
      this.F.execute((Object[])new Void[0]);
      a(this.b);
      a();
      return;
    } 
    a(this.b);
    b();
  }
  
  public void openConfirmar(fsy paramfsy, ftl paramftl) {
    frq.d("Investimentos_Poupanca_Aplicar_Acao", "Continuar");
    e();
    Intent intent = new Intent((Context)this, PoupancaAplicacaoConfirmacaoActivity.class);
    intent.putExtra("itemPosicaoConsolidada", (Serializable)paramftl);
    intent.putExtra("aplicaPoupanca", (Serializable)paramfsy);
    intent.putExtra("agendada", this.D);
    intent.putExtra("fecha", this.C);
    intent.putExtra("dataContabil", paramfsy.f());
    intent.putExtra("agencia", paramftl.l());
    intent.putExtra("conta", paramftl.m());
    intent.putExtra("valorM", this.E);
    startActivity(intent);
  }
  
  public void openConfirmar(fsy paramfsy, fuu paramfuu) {
    frq.d("Investimentos_Poupanca_Aplicar_Confirmacao_Acao", "Confirmar");
    e();
    Intent intent = new Intent((Context)this, PoupancaAplicacaoConfirmacaoActivity.class);
    intent.putExtra("aplicaPoupanca", (Serializable)paramfsy);
    intent.putExtra("agendada", this.D);
    intent.putExtra("fecha", this.C);
    intent.putExtra("dataContabil", paramfsy.f());
    intent.putExtra("agencia", paramfuu.getAgencia());
    intent.putExtra("conta", paramfuu.getCuenta());
    intent.putExtra("valorM", this.E);
    startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\PoupancaAplicacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */