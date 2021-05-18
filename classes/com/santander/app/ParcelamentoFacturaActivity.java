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
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaCorrentistaConfirmacaoActivity;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.CustomEditText;
import com.santander.app.widget.Indicator;
import fjp;
import fjq;
import fjr;
import fjs;
import fjt;
import fju;
import fjv;
import fjw;
import fjx;
import fjy;
import fjz;
import fka;
import fkb;
import fpt;
import fpu;
import fud;
import ful;
import fum;
import ghu;
import gon;
import gpm;
import gpu;
import grs;
import guj;
import hau;
import java.util.ArrayList;
import java.util.List;
import naj;
import nak;
import nez;

public class ParcelamentoFacturaActivity extends grs implements ViewPager.OnPageChangeListener, nez {
  private gon A;
  
  private Indicator B;
  
  private ViewPager C;
  
  private ImageView D;
  
  private ImageView E;
  
  private Activity F;
  
  private fjz G;
  
  private fkb H;
  
  private fud I;
  
  private ful J;
  
  private Conta K = null;
  
  private fka L;
  
  private CustomEditText M;
  
  private Intent N;
  
  private Bundle O;
  
  private String P;
  
  public Dialog a = null;
  
  private final String b = "ParcelamentoFacturaActivity";
  
  private List<fpt> c = null;
  
  private Indicator d;
  
  private ViewPager e;
  
  private ImageView f;
  
  private ImageView g;
  
  private Indicator w;
  
  private ViewPager x;
  
  private ImageView y;
  
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
  
  private void d() {
    int i;
    byte b = 0;
    this.C = (ViewPager)findViewById(2131759209);
    this.C.setOnTouchListener((View.OnTouchListener)new fjw(this));
    this.B = (Indicator)findViewById(2131759212);
    this.E = (ImageView)findViewById(2131759210);
    this.D = (ImageView)findViewById(2131759211);
    this.A = new gon((Activity)this, this.C, this.B, this.E, this.D, 0);
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      i = bundle.getInt("cartao");
      this.P = getIntent().getExtras().getString("NUMEROCARTAO");
    } else {
      i = 0;
    } 
    int j = i;
    if (this.P != null) {
      j = i;
      if (!"".equals(this.P)) {
        ghu ghu = new ghu();
        ghu.y(this.P);
        j = this.v.f().s().d().indexOf(ghu);
      } 
    } 
    gon gon1 = this.A;
    if (j < 0) {
      i = b;
    } else {
      i = j;
    } 
    gon1.a(i);
    this.A.a(this);
  }
  
  private void e() {
    this.e = (ViewPager)findViewById(2131759215);
    this.e.setOnTouchListener((View.OnTouchListener)new fjx(this));
    this.c = new ArrayList<fpt>();
    fpt fpt1 = new fpt();
    fpt1.a("Valor total");
    fpt1.b("(Parcelas fixas)");
    fpt1.a(0);
    fpt fpt2 = new fpt();
    fpt2.a("Valor parcial");
    fpt2.b("(Entrada + Parcelas fixas)");
    fpt2.a(1);
    this.c.add(fpt1);
    this.c.add(fpt2);
    fpu fpu = new fpu((Context)this, this.c);
    this.e.setAdapter((PagerAdapter)fpu);
    this.e.setOnPageChangeListener(this);
    this.d = (Indicator)findViewById(2131759218);
    this.g = (ImageView)findViewById(2131759216);
    this.f = (ImageView)findViewById(2131759217);
    this.g.setOnClickListener((View.OnClickListener)new fjy(this));
    this.f.setOnClickListener((View.OnClickListener)new fjq(this));
    gpm.a(this.d, fpu.getCount(), this.f, this.g, this.e);
  }
  
  private void f() {
    ((TextView)findViewById(2131759150)).setText("");
    ((TextView)findViewById(2131759151)).setText("");
    ((TextView)findViewById(2131759154)).setText("");
    ((TextView)findViewById(2131759214)).setText("");
    this.G = new fjz(this, null);
    this.G.execute((Object[])new Void[0]);
  }
  
  private void g() {
    if (this.I != null && this.I.h() != null) {
      ((TextView)findViewById(2131759150)).setText(nak.m(this.I.c()));
      ((TextView)findViewById(2131759151)).setText(naj.f((Float.parseFloat(this.I.d().replace("+", "")) / 100.0F) + ""));
      ((TextView)findViewById(2131759154)).setText(naj.a((Float.parseFloat(this.I.a().replace("+", "")) / 10000.0F) + "", "true", "###,###,####0.0000"));
      ((TextView)findViewById(2131759214)).setText(naj.f((Float.parseFloat(this.I.e().replace("+", "")) / 100.0F) + ""));
      Button button = (Button)findViewById(2131759228);
      if (this.I.h() == null || this.I.h().length() == 0 || this.I.h().equals("N/A")) {
        button.setEnabled(false);
      } else {
        button.setEnabled(true);
      } 
      onPageSelected(0);
    } 
  }
  
  public void a() {
    this.H = new fkb(this, null);
    this.H.execute((Object[])new Void[0]);
  }
  
  public void a(int paramInt) {}
  
  public void b() {
    if (this.J != null && this.J.K() != null && this.J.K().size() > 0 && ((fum)this.J.K().get(0)).c() != null && ((fum)this.J.K().get(0)).c().toString().length() > 1) {
      ((LinearLayout)findViewById(2131759219)).setVisibility(0);
      gpm.a(this.e, this.f, this.g, this.d, this.e.getCurrentItem(), (Activity)this);
      View view = findViewById(2131759220);
      this.M = (CustomEditText)findViewById(2131759221);
      guj guj = new guj();
      guj.a((EditText)this.M);
      this.M.addTextChangedListener((TextWatcher)guj);
      this.M.setOnEditorActionListener((TextView.OnEditorActionListener)new fjr(this));
      if (this.e.getCurrentItem() == 1) {
        view.setVisibility(0);
      } else {
        view.setVisibility(8);
      } 
      this.x = (ViewPager)findViewById(2131759224);
      this.x.setOnTouchListener((View.OnTouchListener)new fjs(this));
      this.c = new ArrayList<fpt>();
      for (int i = 0; i < this.J.K().size(); i++) {
        fpt fpt = new fpt();
        fpt.a(((fum)this.J.K().get(i)).c());
        fpt.b(((fum)this.J.K().get(i)).d());
        fpt.a(2);
        this.c.add(fpt);
      } 
      fpu fpu = new fpu((Context)this, this.c);
      this.x.setAdapter((PagerAdapter)fpu);
      this.w = (Indicator)findViewById(2131759227);
      this.z = (ImageView)findViewById(2131759225);
      this.y = (ImageView)findViewById(2131759226);
      this.z.setOnClickListener((View.OnClickListener)new fjt(this));
      this.y.setOnClickListener((View.OnClickListener)new fju(this));
      this.x.setOnPageChangeListener((ViewPager.OnPageChangeListener)new fjv(this));
      gpm.a(this.w, fpu.getCount(), this.y, this.z, this.x);
    } 
  }
  
  public void b(int paramInt) {
    f();
  }
  
  public void c() {
    startActivity(new Intent(getApplicationContext(), ParcelamentoFaturaCorrentistaConfirmacaoActivity.class));
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
    this.N = getIntent();
    this.O = this.N.getExtras();
    setContentView(2130969406);
    d();
    e();
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298342));
    this.F = (Activity)this;
    ((Button)findViewById(2131759228)).setOnClickListener((View.OnClickListener)new fjp(this));
    hau.a().a(false);
    f();
  }
  
  protected void onDestroy() {
    super.onDestroy();
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    if (this.e.getCurrentItem() != paramInt)
      this.e.setCurrentItem(paramInt); 
    gpm.a(this.e, this.f, this.g, this.d, paramInt, this.F);
    ((LinearLayout)findViewById(2131759219)).setVisibility(8);
    this.H = new fkb(this, null);
    this.H.execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\ParcelamentoFacturaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */