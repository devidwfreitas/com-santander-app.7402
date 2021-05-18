package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Carrossel;
import com.santander.app.widget.Indicator;
import fml;
import fmm;
import fmn;
import fmo;
import fmp;
import fmq;
import fmr;
import fms;
import fmt;
import fmu;
import fom;
import foo;
import fos;
import fot;
import fou;
import foy;
import foz;
import fpe;
import fpg;
import fpt;
import fpu;
import frq;
import fte;
import ftf;
import ftk;
import ftn;
import fwb;
import gpu;
import grs;
import gui;
import hat;
import hau;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import naj;
import nak;
import nez;

public class RendaFixaResgateActivity extends grs implements nez {
  private Carrossel A;
  
  private Carrossel B;
  
  private Carrossel C;
  
  private Vector<fos> D;
  
  private fos E;
  
  private fos F;
  
  private ViewPager G;
  
  private Indicator H;
  
  private ImageView I;
  
  private ImageView J;
  
  private EditText K;
  
  private TextView L;
  
  private ProgressBar M;
  
  private final String a = "RendaFixaResgateActivity";
  
  private RendaFixaResgateActivity b;
  
  private Dialog c;
  
  private int d = 0;
  
  private boolean e = false;
  
  private List<Conta> f = null;
  
  private ftk g = null;
  
  private fwb w;
  
  private ftn x;
  
  private ftf y;
  
  private Carrossel z;
  
  private void a() {
    setContentView(2130969245);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298475));
    for (int i = 0; i < this.x.a().size(); i++) {
      fms fms = new fms(this, null);
      fms.a(i);
      fms.execute((Object[])new Void[0]);
    } 
    this.K = (EditText)findViewById(2131757302);
    this.L = (TextView)findViewById(2131757303);
    if (this.g != null && this.g.d() != null && this.g.d().h() != null && this.y != null && this.y.f() != null && !this.y.f().isEmpty() && ((fte)this.y.f().get(0)).f() != null) {
      this.L.setText(naj.f(((fte)this.y.f().get(0)).f()));
    } else {
      this.L.setText(naj.f("0"));
    } 
    gui gui = new gui();
    gui.a(this.K);
    this.K.addTextChangedListener((TextWatcher)gui);
    this.f = this.v.f().q().a();
    d();
    e();
  }
  
  private void b() {
    this.A = (Carrossel)findViewById(2131758573);
    int j = this.x.a().indexOf(this.g);
    Vector<fpg> vector = new Vector();
    for (int i = 0; i < this.x.a().size(); i++) {
      ftk ftk1 = this.x.a().get(i);
      fpg fpg = new fpg();
      fpg.a(ftk1.b());
      fpg.b(ftk1.d().j());
      fpg.c(ftk1.d().g());
      vector.add(fpg);
    } 
    fpe fpe = new fpe((Context)this, vector);
    this.A.setListener(this);
    this.A.setAdapter((fom)fpe);
    this.A.setCurrentItem(j);
    d(j);
    this.g = this.x.a().get(j);
    this.L.setText(naj.f(((fte)this.y.f().get(0)).f()));
  }
  
  private void c() {
    this.G = (ViewPager)findViewById(2131758576);
    this.H = (Indicator)findViewById(2131758579);
    this.H.setSize(2);
    this.G.setOnTouchListener((View.OnTouchListener)new fmm(this));
    ArrayList<fpt> arrayList = new ArrayList();
    fpt fpt1 = new fpt();
    fpt1.a("Valor total");
    fpt1.b("");
    fpt1.a(0);
    fpt fpt2 = new fpt();
    fpt2.a("Valor parcial");
    fpt2.b("");
    fpt2.a(1);
    arrayList.add(fpt2);
    arrayList.add(fpt1);
    fpu fpu = new fpu((Context)this, arrayList);
    this.G.setAdapter((PagerAdapter)fpu);
    this.I = (ImageView)findViewById(2131758577);
    this.J = (ImageView)findViewById(2131758578);
    this.I.setOnClickListener((View.OnClickListener)new fmn(this));
    this.J.setOnClickListener((View.OnClickListener)new fmo(this));
    this.G.setOnPageChangeListener((ViewPager.OnPageChangeListener)new fmp(this));
  }
  
  private void d() {
    this.C = (Carrossel)findViewById(2131758477);
    this.D = new Vector<fos>();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    this.E = new fos();
    this.E.a(getResources().getString(2131296700));
    this.E.b(simpleDateFormat.format(new Date()));
    this.F = new fos();
    this.F.a(getResources().getString(2131296698));
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    calendar.add(5, 1);
    this.F.b(simpleDateFormat.format(calendar.getTime()));
    this.F.a(fot.PICKER);
    this.D.add(this.E);
    this.D.add(this.F);
    fou fou = new fou((Context)this, this.D, (Activity)this);
    this.C.setAdapter((fom)fou);
    this.C.setListener((nez)new fmq(this));
  }
  
  private void d(int paramInt) {
    this.z = (Carrossel)findViewById(2131758574);
    this.g = this.x.a().get(paramInt);
    this.y = ((ftk)this.x.a().get(paramInt)).d();
    Vector<foy> vector = new Vector();
    for (paramInt = 0; paramInt < this.y.f().size(); paramInt++) {
      fte fte = this.y.f().get(paramInt);
      foy foy = new foy();
      foy.a(nak.l(fte.a()));
      foy.b("Valor líquido: " + naj.f(fte.f()));
      foy.c("Taxa - CDI: " + naj.q(fte.d()));
      foy.d("Data de vencimento: " + nak.l(fte.b()));
      vector.add(foy);
    } 
    foz foz = new foz((Context)this, vector);
    this.z.setAdapter((fom)foz);
    this.z.setListener((nez)new fml(this));
  }
  
  private void e() {
    this.B = (Carrossel)findViewById(2131758479);
    foo foo = new foo((Context)this, this.f);
    this.B.setAdapter((fom)foo);
    this.B.setListener((nez)new fmr(this));
  }
  
  public void a(int paramInt) {}
  
  public void b(int paramInt) {
    if (hau.a().j().h() != null)
      this.g = hau.a().j().h().a().get(paramInt); 
    if (this.g != null)
      frq.d("Investimentos_RendaFixa_Aplicar_Acao", this.g.b()); 
    d(paramInt);
    this.L.setText(naj.f(((fte)this.y.f().get(0)).f()));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    Intent intent = getIntent();
    this.b = this;
    this.x = (ftn)intent.getSerializableExtra("listaProdutos");
    this.g = (ftk)intent.getSerializableExtra("itemListarProductosResgateRendaFixaBean");
    if (this.x.a().size() <= 0) {
      this.M = (ProgressBar)findViewById(2131757077);
      (new fmt(this, null)).execute((Object[])new Void[0]);
      return;
    } 
    a();
  }
  
  public void openConfirmar(View paramView) {
    frq.d("Investimentos_RendaFixa_Resgate_Acao", "Continuar");
    try {
      if (this.G.getCurrentItem() == 1) {
        if (Long.parseLong(this.L.getText().toString().replace("R$ ", "").replaceAll(",", "").replaceAll("\\.", "")) == 0L) {
          hat.d().a((Activity)this.b, getString(2131297180));
          return;
        } 
      } else if (Long.parseLong(this.K.getText().toString().replaceAll(",", "").replaceAll("\\.", "")) == 0L) {
        hat.d().a((Activity)this.b, getString(2131297180));
        return;
      } 
    } catch (Exception exception) {
      hat.d().a((Activity)this.b, getString(2131297180));
      return;
    } 
    (new fmu(this, null)).execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\RendaFixaResgateActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */