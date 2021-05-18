package com.santander.app.faturas.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.util.Patterns;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.widget.Indicator;
import fue;
import fuj;
import ghu;
import goh;
import gon;
import gpu;
import grs;
import hav;
import idw;
import idx;
import idy;
import iea;
import nak;

public class DetalheFaturaActivity extends grs {
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private TextView D;
  
  private TextView E;
  
  private Button F;
  
  private TextView G;
  
  private TextView H;
  
  private TextView I;
  
  private TextView J;
  
  private TextView K;
  
  private Button L;
  
  private Bundle M;
  
  private Bundle N;
  
  private boolean O;
  
  private fue P;
  
  private LinearLayout Q;
  
  private LinearLayout R;
  
  private Dialog S;
  
  private String T;
  
  private iea U;
  
  private Activity V;
  
  private ghu W;
  
  private LinearLayout X;
  
  private ImageView Y = null;
  
  private boolean Z = false;
  
  public Dialog a = null;
  
  private Bundle aa;
  
  private final String b = "DetalheFaturaActivity";
  
  private gon c;
  
  private ViewPager d = null;
  
  private Indicator e = null;
  
  private ImageView f = null;
  
  private ImageView g = null;
  
  private int w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private void a(boolean paramBoolean) {
    boolean bool;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    findViewById(2131757862).setVisibility(bool);
    findViewById(2131757866).setVisibility(bool);
    findViewById(2131757870).setVisibility(bool);
    findViewById(2131757874).setVisibility(bool);
    findViewById(2131757878).setVisibility(bool);
    findViewById(2131757885).setVisibility(bool);
    findViewById(2131757886).setVisibility(bool);
    findViewById(2131757865).setVisibility(bool);
    findViewById(2131757873).setVisibility(bool);
    findViewById(2131757877).setVisibility(bool);
    findViewById(2131757881).setVisibility(bool);
    findViewById(2131757869).setVisibility(bool);
    if (this.O)
      findViewById(2131757849).setVisibility(bool); 
  }
  
  public static final boolean a(CharSequence paramCharSequence) {
    return (paramCharSequence == null) ? false : Patterns.EMAIL_ADDRESS.matcher(paramCharSequence).matches();
  }
  
  private void b() {
    this.Q = (LinearLayout)findViewById(2131756795);
    this.R = (LinearLayout)findViewById(2131756797);
    this.d = (ViewPager)findViewById(2131756722);
    this.e = (Indicator)findViewById(2131756725);
    this.g = (ImageView)findViewById(2131756723);
    this.f = (ImageView)findViewById(2131756724);
    this.x = (TextView)findViewById(2131757847);
    this.y = (TextView)findViewById(2131757851);
    this.G = (TextView)findViewById(2131757864);
    this.H = (TextView)findViewById(2131757868);
    this.I = (TextView)findViewById(2131757876);
    this.J = (TextView)findViewById(2131757880);
    this.L = (Button)findViewById(2131757886);
    this.z = (TextView)findViewById(2131757860);
    this.A = (TextView)findViewById(2131757864);
    this.C = (TextView)findViewById(2131757868);
    this.B = (TextView)findViewById(2131757871);
    this.X = (LinearLayout)findViewById(2131757870);
    this.D = (TextView)findViewById(2131757876);
    this.E = (TextView)findViewById(2131757880);
    this.F = (Button)findViewById(2131757886);
    c();
    if (this.O) {
      this.Q.setVisibility(0);
      this.R.setVisibility(8);
      e();
      return;
    } 
    this.Q.setVisibility(8);
    this.R.setVisibility(0);
    d();
    this.F.setOnClickListener((View.OnClickListener)new idw(this));
  }
  
  private void c() {
    this.d.setOnTouchListener((View.OnTouchListener)new idx(this));
    this.e = (Indicator)findViewById(2131756725);
    this.g = (ImageView)findViewById(2131756723);
    this.f = (ImageView)findViewById(2131756724);
    this.c = new gon((Activity)this, this.d, this.e, this.g, this.f, 0);
    this.c.a(this.w, Boolean.valueOf(false));
    this.w = this.c.a();
  }
  
  private void d() {
    String str;
    TextView textView = this.z;
    if (this.P.a() != null) {
      str = nak.l(this.P.a());
    } else {
      str = "";
    } 
    textView.setText(str);
    if (this.P.c() != null) {
      goh.b(this.A, this.P.c(), "true");
    } else {
      this.A.setText("R$0,00");
    } 
    if (this.P.d() != null) {
      goh.b(this.C, this.P.d(), "true");
    } else {
      this.C.setText("R$0,00");
    } 
    this.Y = (ImageView)findViewById(2131757869);
    this.Y.setVisibility(0);
    this.X.setVisibility(0);
    if (this.P.V() != null) {
      goh.b(this.B, this.P.V(), "true");
      if (this.B.getText().toString().equalsIgnoreCase("R$ 0,00")) {
        this.X.setVisibility(8);
        this.Y.setVisibility(8);
      } 
    } else {
      this.B.setText("R$0,00");
    } 
    if (this.P.q() != null) {
      goh.b(this.D, this.P.q(), "true");
    } else {
      this.D.setText("");
    } 
    if (this.P.p() != null) {
      goh.b(this.E, this.P.p(), "true");
    } else {
      this.E.setText("");
    } 
    if (this.P != null && this.P.e() != null && this.P.e().size() != 0) {
      LinearLayout linearLayout = (LinearLayout)findViewById(2131757887);
      linearLayout.removeAllViews();
      LayoutInflater layoutInflater = getLayoutInflater();
      for (int i = 0; i < this.P.e().size(); i++) {
        View view = layoutInflater.inflate(2130969348, null);
        TextView textView1 = (TextView)view.findViewById(2131759039);
        TextView textView2 = (TextView)view.findViewById(2131759041);
        if (!((fuj)this.P.e().get(i)).b().equals("01/01/0001")) {
          textView1.setText(((fuj)this.P.e().get(i)).b());
        } else {
          textView1.setText(getResources().getString(2131298554));
        } 
        textView1.setTextColor(-7829368);
        textView1.setTextSize(13.0F);
        TextView textView3 = (TextView)view.findViewById(2131759040);
        textView3.setText(((fuj)this.P.e().get(i)).a());
        textView3.setTextSize(14.0F);
        if (((fuj)this.P.e().get(i)).a().contains("SUBTOTAL")) {
          textView3.setTypeface(null, 1);
          textView2.setTypeface(null, 1);
          textView2.setPadding(0, 40, 0, 0);
          textView1.setText("");
        } 
        if (((fuj)this.P.e().get(i)).c() != null) {
          if (((fuj)this.P.e().get(i)).d() == null) {
            goh.b(textView2, ((fuj)this.P.e().get(i)).c(), "false");
          } else {
            goh.b(textView2, ((fuj)this.P.e().get(i)).c(), ((fuj)this.P.e().get(i)).d());
          } 
        } else {
          textView2.setText("R$0,00");
        } 
        textView2.setTextSize(13.0F);
        if (!((fuj)this.P.e().get(i)).a().contains("SUBTOTAL") || !this.Z)
          linearLayout.addView(view); 
      } 
      if (this.P.k() != null && this.P.k().length() > 0)
        hav.c(this.V, this.P.k()); 
    } 
  }
  
  private void e() {
    String str;
    TextView textView = this.x;
    if (this.P.a() != null) {
      str = nak.l(this.P.a());
    } else {
      str = "";
    } 
    textView.setText(str);
    if (this.P.c() != null) {
      goh.b(this.y, this.P.c(), "true");
    } else {
      this.y.setText("R$0,00");
    } 
    if (this.P != null && this.P.e() != null && this.P.e().size() != 0) {
      LinearLayout linearLayout = (LinearLayout)findViewById(2131757855);
      linearLayout.removeAllViews();
      LayoutInflater layoutInflater = getLayoutInflater();
      for (int i = 0; i < this.P.e().size(); i++) {
        View view = layoutInflater.inflate(2130969348, null);
        TextView textView1 = (TextView)view.findViewById(2131759039);
        TextView textView2 = (TextView)view.findViewById(2131759041);
        if (!((fuj)this.P.e().get(i)).b().equals("01/01/0001")) {
          textView1.setText(((fuj)this.P.e().get(i)).b());
        } else {
          textView1.setText(getResources().getString(2131298554));
        } 
        textView1.setTextColor(-7829368);
        textView1.setTextSize(13.0F);
        TextView textView3 = (TextView)view.findViewById(2131759040);
        textView3.setText(((fuj)this.P.e().get(i)).a());
        textView3.setTextSize(14.0F);
        if (((fuj)this.P.e().get(i)).a().contains("SUBTOTAL")) {
          textView3.setTypeface(null, 1);
          textView2.setTypeface(null, 1);
          textView2.setPadding(0, 20, 0, 0);
          textView1.setText("");
        } 
        if (((fuj)this.P.e().get(i)).c() != null) {
          if (((fuj)this.P.e().get(i)).d() == null) {
            goh.b(textView2, ((fuj)this.P.e().get(i)).c(), "false");
          } else {
            goh.b(textView2, ((fuj)this.P.e().get(i)).c(), ((fuj)this.P.e().get(i)).d());
          } 
        } else {
          textView2.setText("R$0,00");
        } 
        textView2.setTextSize(13.0F);
        if (!((fuj)this.P.e().get(i)).a().contains("SUBTOTAL") || !this.Z)
          linearLayout.addView(view); 
      } 
      if (this.P.k() != null && this.P.k().length() > 0)
        hav.c(this.V, this.P.k()); 
    } 
  }
  
  private void f() {
    this.N = getIntent().getExtras();
    this.O = this.N.getBoolean("isFaturaAberta");
  }
  
  private void g() {
    this.M = getIntent().getExtras();
    this.w = this.M.getInt("EXTRACARTAO");
  }
  
  private void h() {
    this.M = getIntent().getExtras();
    this.P = (fue)this.M.get("EXTRADADOS");
  }
  
  private void i() {
    this.aa = getIntent().getExtras();
    this.Z = this.N.getBoolean("ISADICIONAL");
  }
  
  public void a() {
    this.S = new Dialog((Context)this.V, 2131427876);
    this.S.setContentView(2130969030);
    (this.S.getWindow().getAttributes()).windowAnimations = 2131427870;
    ((Button)this.S.findViewById(2131757221)).setOnClickListener((View.OnClickListener)new idy(this));
    this.S.show();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968932);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, "Lançamentos da Fatura");
    this.V = (Activity)this;
    g();
    f();
    h();
    i();
    b();
    a(this.Z);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\faturas\activity\DetalheFaturaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */