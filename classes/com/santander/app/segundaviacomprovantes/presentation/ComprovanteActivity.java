package com.santander.app.segundaviacomprovantes.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import goj;
import gpu;
import kkx;
import kkz;
import kmp;
import kmq;
import kmr;
import kne;
import knf;

public class ComprovanteActivity extends goj implements kmr {
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private Button D;
  
  private Button E;
  
  private LinearLayout F;
  
  private Activity G;
  
  private kne H;
  
  private kkx I;
  
  private TextView J;
  
  private String a = "ComprovanteActivity";
  
  private RelativeLayout b;
  
  private LinearLayout c;
  
  private TextView f;
  
  private TextView g;
  
  private TextView w;
  
  private ImageView x;
  
  private TextView y;
  
  private TextView z;
  
  public void a() {
    this.b = (RelativeLayout)findViewById(2131757783);
    this.g = (TextView)findViewById(2131757784);
    this.w = (TextView)findViewById(2131757777);
    this.x = (ImageView)findViewById(2131757782);
    this.C = (TextView)findViewById(2131757792);
    this.y = (TextView)findViewById(2131757788);
    this.z = (TextView)findViewById(2131757789);
    this.A = (TextView)findViewById(2131757042);
    this.B = (TextView)findViewById(2131757791);
    this.D = (Button)findViewById(2131755253);
    this.E = (Button)findViewById(2131756854);
    this.F = (LinearLayout)findViewById(2131757785);
    this.J = (TextView)findViewById(2131757787);
    this.c = (LinearLayout)findViewById(2131757786);
    this.D.setOnClickListener(b());
    this.E.setOnClickListener(c());
    this.g.setText(this.I.k());
    this.w.setText(this.I.l());
    this.y.setText(this.I.c());
    this.z.setText(this.I.d());
    if (this.I.m() != null)
      this.B.setText(this.I.m()); 
    if (this.I.n() != null) {
      this.C.setVisibility(0);
      this.C.setText(this.I.n());
    } 
    if (this.I.o() != null)
      this.c.setVisibility(8); 
    if (kkz.SEGUNDA_VIA_TEL_PRE.getValor().equals(this.I.a())) {
      this.J.setVisibility(8);
      this.y.setVisibility(8);
    } else {
      this.J.setVisibility(0);
      this.y.setVisibility(0);
    } 
    a(this.I);
  }
  
  public void a(LinearLayout paramLinearLayout) {
    this.F.addView((View)paramLinearLayout);
  }
  
  public void a(kkx paramkkx) {
    this.H.a(paramkkx);
  }
  
  View.OnClickListener b() {
    return (View.OnClickListener)new kmp(this);
  }
  
  View.OnClickListener c() {
    return (View.OnClickListener)new kmq(this);
  }
  
  public void d() {
    this.F.setVisibility(8);
  }
  
  public void e() {}
  
  public void f() {
    this.D.setVisibility(0);
    this.E.setVisibility(0);
    this.x.setVisibility(8);
    this.x.setBackground(null);
    this.x.setBackgroundColor(Color.parseColor("#00000000"));
  }
  
  public String g() {
    this.D.setVisibility(8);
    this.E.setVisibility(8);
    this.x.setVisibility(0);
    this.x.setBackground(getResources().getDrawable(2130839035));
    this.x.setBackgroundColor(getResources().getColor(2131623961));
    return a(2131757781);
  }
  
  public String h() {
    return this.a;
  }
  
  public Activity i() {
    return this.G;
  }
  
  public void onBackPressed() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968865);
    this.I = (kkx)getIntent().getExtras().getSerializable("comprovante");
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131299003));
    this.G = (Activity)this;
    this.H = (kne)new knf(this.I, this);
    a();
  }
  
  protected void onResume() {
    super.onResume();
    f();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\segundaviacomprovantes\presentation\ComprovanteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */