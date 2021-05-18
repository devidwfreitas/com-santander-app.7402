package com.santander.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Carrossel;
import com.santander.app.widget.Indicator;
import fjg;
import fjh;
import fji;
import fjj;
import fjk;
import fjl;
import fjm;
import fjn;
import fjo;
import foh;
import fom;
import foo;
import fos;
import fot;
import fou;
import fpv;
import fpw;
import frq;
import fud;
import ghu;
import gon;
import gpm;
import gpu;
import grs;
import hau;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import mxn;
import naj;
import nak;
import nez;

public class PagamentoFacturaCartoesActivity extends grs implements ViewPager.OnPageChangeListener, nez {
  private ImageView A;
  
  private Carrossel B;
  
  private Activity C;
  
  private fjo D;
  
  private fud E;
  
  private fos F;
  
  private fos G;
  
  private Carrossel H;
  
  private boolean I;
  
  private Intent J;
  
  private Bundle K;
  
  private String L;
  
  private TextView M;
  
  private boolean N = false;
  
  private int O = 1;
  
  private int P = 0;
  
  public Dialog a = null;
  
  private final String b = "PagamentoFacturaCartoesActivity";
  
  private List<fpv> c;
  
  private Indicator d;
  
  private ViewPager e;
  
  private ImageView f;
  
  private ImageView g;
  
  private gon w;
  
  private Indicator x;
  
  private ViewPager y;
  
  private ImageView z;
  
  private boolean a(Context paramContext) {
    boolean bool = false;
    List list = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < list.size()) {
        if (((ActivityManager.RunningAppProcessInfo)list.get(i)).processName.equals("com.santander.app")) {
          onDestroy();
          Process.killProcess(Process.myPid());
          return true;
        } 
      } else {
        return bool1;
      } 
    } 
  }
  
  private void c() {
    h();
    f();
    g();
    hau.a().a(false);
    j();
  }
  
  private boolean d() {
    return (this.v.f().s().f() != null && this.v.f().s().f().size() > 0) ? ((((ghu)this.v.f().s().f().get(0)).A() == null)) : false;
  }
  
  private void e() {
    this.a = mxn.b(this.C);
    this.v.f().t().a((foh)new fjh(this));
  }
  
  private void f() {
    ArrayList<Conta> arrayList = new ArrayList();
    for (int i = 0; i < this.v.f().q().a().size(); i++)
      arrayList.add(this.v.f().q().a().get(i)); 
    this.H = (Carrossel)findViewById(2131757239);
    foo foo = new foo((Context)this, arrayList, this.O);
    this.H.setAdapter((fom)foo);
    this.H.setOnTouchListener((View.OnTouchListener)new fji(this));
    if (arrayList.size() == 0)
      ((Button)findViewById(2131759167)).setEnabled(true); 
  }
  
  private void g() {
    this.B = (Carrossel)findViewById(2131759165);
    Vector<fos> vector = new Vector();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
    this.F = new fos();
    this.F.a("PAGAR HOJE");
    this.F.b(simpleDateFormat.format(new Date()));
    this.G = new fos();
    this.G.a("AGENDAR PARA");
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(new Date());
    calendar.add(5, 1);
    this.G.b(simpleDateFormat.format(calendar.getTime()));
    this.G.a(fot.PICKER);
    vector.add(this.F);
    vector.add(this.G);
    if (this.I) {
      vector.remove(this.G);
      this.I = false;
    } 
    fou fou = new fou((Context)this, vector, (Activity)this);
    this.B.setAdapter((fom)fou);
    this.B.setListener((nez)new fjj(this, vector));
  }
  
  private void h() {
    int i;
    byte b = 0;
    this.y = (ViewPager)findViewById(2131759148);
    this.y.setOnTouchListener((View.OnTouchListener)new fjk(this));
    this.x = (Indicator)findViewById(2131759149);
    this.A = (ImageView)findViewById(2131759146);
    this.z = (ImageView)findViewById(2131759147);
    this.A.setOnClickListener((View.OnClickListener)new fjl(this));
    this.z.setOnClickListener((View.OnClickListener)new fjm(this));
    this.w = new gon((Activity)this, this.y, this.x, this.A, this.z, 0);
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      i = bundle.getInt("indexCartao");
      if (this.v.f().s().f().size() == 1 || i > this.v.f().s().f().size() - 1) {
        this.L = null;
        i = 0;
      } else {
        this.L = getIntent().getExtras().getString("NUMEROCARTAO");
      } 
    } else {
      i = 0;
    } 
    int j = i;
    if (this.L != null) {
      j = i;
      if (!"".equals(this.L)) {
        ghu ghu = new ghu();
        ghu.y(this.L);
        j = this.v.f().s().f().indexOf(ghu);
      } 
    } 
    gon gon1 = this.w;
    if (j < 0) {
      i = b;
    } else {
      i = j;
    } 
    gon1.b(i);
    this.w.a(this);
  }
  
  private void i() {
    this.e = (ViewPager)findViewById(2131759161);
    this.e.setOnTouchListener((View.OnTouchListener)new fjn(this));
    this.c = new ArrayList<fpv>();
    fpv fpv = new fpv();
    fpv.a("PAGAR VALOR TOTAL");
    fpv.b(naj.f(this.E.h()));
    fpv.a(0);
    this.c.add(fpv);
    fpv = new fpv();
    fpv.a("PAGAR VALOR ATUALIZADO");
    fpv.b(naj.f(this.E.m()).replace("R$", ""));
    fpv.a(1);
    this.c.add(fpv);
    fpv = new fpv();
    fpv.a("PAGAR MÍNIMO");
    fpv.b(naj.f(this.E.g()));
    fpv.a(2);
    this.c.add(fpv);
    if (this.E.n() != null && naj.c(naj.C(this.E.n())) > 0.0F) {
      fpv = new fpv();
      fpv.a("PAGAR VALOR PARCIAL");
      fpv.b(naj.f(this.E.n()));
      fpv.a(4);
      this.c.add(fpv);
    } 
    fpv = new fpv();
    fpv.a("PAGAR OUTRO VALOR");
    fpv.b(naj.f(this.E.g()).replace("R$", ""));
    fpv.a(3);
    this.c.add(fpv);
    fpw fpw = new fpw((Context)this, this.c);
    this.e.setAdapter((PagerAdapter)fpw);
    this.e.setOnPageChangeListener(this);
    this.d = (Indicator)findViewById(2131759162);
    this.g = (ImageView)findViewById(2131759159);
    this.f = (ImageView)findViewById(2131759160);
    gpm.a(this.d, fpw.getCount(), this.f, this.g, this.e);
  }
  
  private void j() {
    ((TextView)findViewById(2131759150)).setText("");
    ((TextView)findViewById(2131759151)).setText("");
    ((TextView)findViewById(2131759154)).setText("");
    this.e = (ViewPager)findViewById(2131759161);
    this.e.setVisibility(4);
    this.D = new fjo(this, null);
    this.D.execute((Object[])new Void[0]);
  }
  
  private void k() {
    Button button;
    if (this.E != null && this.E.h() != null) {
      ((TextView)findViewById(2131759150)).setText(nak.l(this.E.c()));
      TextView textView = (TextView)findViewById(2131759151);
      textView.setText(naj.f(this.E.h()));
      if (this.E.h() != null && this.E.h().contains("-"))
        textView.setTextColor(getResources().getColor(2131623961)); 
      ((TextView)findViewById(2131759154)).setText(naj.f(this.E.g()));
      ((TextView)findViewById(2131759152)).setVisibility(0);
      textView = (TextView)findViewById(2131759153);
      textView.setVisibility(0);
      textView.setText(naj.f(this.E.m()));
      textView = (TextView)findViewById(2131759156);
      this.M = (TextView)findViewById(2131759155);
      textView.setVisibility(8);
      this.M.setVisibility(8);
      if (this.E.n() != null && naj.c(naj.C(this.E.n())) > 0.0F) {
        textView.setVisibility(0);
        this.M.setVisibility(0);
        textView.setText(naj.f(this.E.n()));
      } 
      this.e = (ViewPager)findViewById(2131759161);
      this.e.setVisibility(0);
      i();
      onPageSelected(0);
      button = (Button)findViewById(2131759167);
      if (this.E.h() == null || this.E.h().length() == 0 || this.E.h().equals("N/A")) {
        button.setEnabled(false);
        return;
      } 
    } else {
      return;
    } 
    button.setEnabled(true);
  }
  
  public String a() {
    return (this.B.a() == 0) ? this.F.b() : this.G.b();
  }
  
  public void a(int paramInt) {}
  
  public Boolean b() {
    if (this.B.a() == 0) {
      frq.d("Cartoes_PagamentoDaFatura_DataDoPagamento_Acao", "Pagar Hoje");
      return Boolean.valueOf(false);
    } 
    frq.d("Cartoes_PagamentoDaFatura_DataDoPagamento_Acao", "Agendado");
    return Boolean.valueOf(true);
  }
  
  public void b(int paramInt) {
    j();
    f();
  }
  
  public void onBackPressed() {
    if (this.v.d()) {
      this.v.c(false);
      finishAffinity();
      a((Context)this);
      return;
    } 
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.J = getIntent();
    this.K = this.J.getExtras();
    setContentView(2130969398);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298323));
    ((Button)findViewById(2131759167)).setOnClickListener((View.OnClickListener)new fjg(this));
    this.C = (Activity)this;
    if (d()) {
      e();
      return;
    } 
    c();
  }
  
  protected void onDestroy() {
    super.onDestroy();
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    if (this.N) {
      TextView textView;
      switch (((fpv)this.c.get(paramInt)).c()) {
        default:
          gpm.a(this.e, this.f, this.g, this.d, paramInt, (Activity)this);
          textView = (TextView)findViewById(2131759184);
          if (textView != null)
            textView.setText("0"); 
          findViewById(2131759163).setVisibility(8);
          if (((fpv)this.c.get(paramInt)).c() == 1) {
            this.I = true;
          } else {
            break;
          } 
          g();
          this.N = true;
          return;
        case 0:
          frq.d("Cartoes_PagamentoDaFatura_OpcoesPagamento_Acao", "PagarValorTotal");
        case 1:
          frq.d("Cartoes_PagamentoDaFatura_OpcoesPagamento_Acao", "PagarValorAtualizado");
        case 2:
          frq.d("Cartoes_PagamentoDaFatura_OpcoesPagamento_Acao", "PagarMinimo");
        case 3:
          frq.d("Cartoes_PagamentoDaFatura_OpcoesPagamento_Acao", "PagarOutroValor");
      } 
      if (((fpv)this.c.get(paramInt)).c() == 4)
        findViewById(2131759163).setVisibility(0); 
    } else {
    
    } 
    g();
    this.N = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\PagamentoFacturaCartoesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */