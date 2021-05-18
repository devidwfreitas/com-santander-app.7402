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
import android.view.ViewTreeObserver;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.santander.app.widget.Carrossel;
import com.santander.app.widget.Indicator;
import fkn;
import fko;
import fkp;
import fkq;
import fkr;
import fks;
import fkt;
import fku;
import fom;
import fos;
import fot;
import fou;
import fpj;
import fpt;
import fpu;
import fpy;
import frq;
import ftb;
import ftc;
import ftl;
import ftr;
import fts;
import gpu;
import grs;
import guj;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Vector;
import mxn;
import naj;
import nez;

public class PoupancaResgateActivity extends grs implements nez {
  private ImageView A;
  
  private Indicator B;
  
  private ftr C;
  
  private fts D;
  
  private ProgressBar E;
  
  private Activity F;
  
  private fku G;
  
  private Vector<fpj> H;
  
  private ftc I;
  
  private int J = 0;
  
  public Dialog a = null;
  
  private final String b = "PoupancaResgateActivity";
  
  private Carrossel c;
  
  private Indicator d;
  
  private Carrossel e;
  
  private fos f;
  
  private fos g;
  
  private EditText w;
  
  private TextView x;
  
  private ViewPager y;
  
  private ImageView z;
  
  private void a() {
    this.c = (Carrossel)findViewById(2131757076);
    this.H = new Vector<fpj>();
    this.d = (Indicator)findViewById(2131759261);
    this.d.setSize(this.I.c().size());
    for (int i = 0; i < this.I.c().size(); i++) {
      fpj fpj = new fpj();
      fpj.a(this.I.c().get(i));
      this.H.add(fpj);
    } 
    fpy fpy = new fpy((Context)this, this.H);
    this.c.setAdapter((fom)fpy);
    this.c.setListener(this);
    b();
  }
  
  private void a(fts paramfts) {
    if (paramfts.a() == null || "".equals(paramfts.a())) {
      goConfirmar();
      return;
    } 
    mxn.b(this.F, paramfts.a());
  }
  
  private void b() {
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
    fpu fpu = new fpu((Context)this.F, arrayList);
    this.y.setAdapter((PagerAdapter)fpu);
    this.A = (ImageView)this.F.findViewById(2131758577);
    this.z = (ImageView)this.F.findViewById(2131758578);
    if (this.v.f().i().equals("SE"))
      this.z.setImageResource(2130837608); 
    this.A.setOnClickListener((View.OnClickListener)new fkq(this));
    this.z.setOnClickListener((View.OnClickListener)new fkr(this));
    this.w = (EditText)findViewById(2131757302);
    guj guj = new guj();
    guj.a(this.w);
    this.w.addTextChangedListener((TextWatcher)guj);
    this.w.setOnClickListener((View.OnClickListener)new fks(this));
    this.x = (TextView)findViewById(2131757303);
    if (this.I.a() != null && this.I.a().size() > 0 && ((ftb)this.I.a().get(0)).i() != null) {
      this.x.setText(naj.f(((ftl)this.I.c().get(0)).i()));
    } else {
      this.x.setText(naj.f("0"));
    } 
    this.B = (Indicator)findViewById(2131758579);
    this.B.setSize(2);
  }
  
  public void a(int paramInt) {}
  
  public void b(int paramInt) {
    frq.d("Investimentos_Poupanca_Resgatar_Acao", "SelecionarConta");
    this.d.setSelected(paramInt);
    this.x.setText(naj.f(((ftl)this.I.c().get(paramInt)).i()));
  }
  
  public void goConfirmar() {
    frq.d("Investimentos_Poupanca_Resgatar_Confirmacao_Acao", "Confirmar");
    Intent intent = new Intent((Context)this, PoupancaResgateConfirmacaoActivity.class);
    intent.putExtra("requestParam", (Serializable)this.C);
    intent.putExtra("responseResgatar", (Serializable)this.D);
    startActivity(intent);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969419);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298475));
    this.F = (Activity)this;
    this.y = (ViewPager)findViewById(2131758576);
    if (getIntent().getExtras() != null) {
      this.I = (ftc)getIntent().getExtras().get("consultarPosicaoConsolidadaPoupancaList");
    } else {
      this.I = new ftc();
    } 
    if (this.I.c() != null && this.I.c().size() == 0) {
      this.E = (ProgressBar)findViewById(2131757077);
      (new fkt(this, null)).execute((Object[])new Void[0]);
    } else {
      a();
    } 
    this.e = (Carrossel)findViewById(2131759256);
    Vector<fos> vector = new Vector();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    this.f = new fos();
    this.f.a(getResources().getString(2131296700));
    this.f.b(simpleDateFormat.format(new Date()));
    this.g = new fos();
    this.g.a(getResources().getString(2131296698));
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    calendar.add(5, 1);
    this.g.b(simpleDateFormat.format(calendar.getTime()));
    this.g.a(fot.PICKER);
    vector.add(this.f);
    vector.add(this.g);
    fou fou = new fou((Context)this, vector, (Activity)this);
    this.e.setAdapter((fom)fou);
    this.J = 0;
    this.e.b().getViewTreeObserver().addOnScrollChangedListener((ViewTreeObserver.OnScrollChangedListener)new fkn(this, fou));
    this.y.setOnTouchListener((View.OnTouchListener)new fko(this));
    this.y.setOnPageChangeListener((ViewPager.OnPageChangeListener)new fkp(this));
  }
  
  public void openConfirmar(View paramView) {
    String str;
    frq.d("Investimentos_Poupanca_Resgatar_Acao", "Continuar");
    ftl ftl = this.I.c().get(this.c.a());
    if (this.y.getCurrentItem() == 0) {
      str = naj.l(this.w.getText().toString());
    } else {
      str = naj.p(str.f());
    } 
    if (str.length() == 0) {
      mxn.b(this.F, getResources().getString(2131297181));
      return;
    } 
    this.G = new fku(this, null);
    this.G.execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\PoupancaResgateActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */