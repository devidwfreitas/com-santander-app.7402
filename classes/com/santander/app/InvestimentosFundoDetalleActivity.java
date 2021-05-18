package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import fip;
import ftg;
import fth;
import fti;
import gpu;
import grs;
import naj;
import naq;

public class InvestimentosFundoDetalleActivity extends grs {
  public Dialog a = null;
  
  private final String b = "InvestimentosFundoDetalleActivity";
  
  private Activity c;
  
  private ftg d;
  
  private fip e;
  
  private String f;
  
  private String g;
  
  private String w;
  
  private void a() {
    try {
      ((TextView)findViewById(2131758509)).setText(this.d.a());
      ((TextView)findViewById(2131758510)).setText(String.format("%.7f", new Object[] { Float.valueOf(Float.parseFloat(this.d.b()) / 1.0E7F) }));
      ((TextView)findViewById(2131758511)).setText(naj.f(this.d.e()));
      ((TextView)findViewById(2131758512)).setText(String.format("%.7f", new Object[] { Float.valueOf(Float.parseFloat(this.d.f())) }).replaceAll("\\.", ","));
      ((TextView)findViewById(2131758513)).setText(naj.f(this.d.j()));
      ((TextView)findViewById(2131758514)).setText(naj.f(this.d.i()));
      ((TextView)findViewById(2131758515)).setText(naj.f(this.d.h()));
      ((TextView)findViewById(2131758516)).setText(naj.f(this.d.g()));
      LinearLayout linearLayout = (LinearLayout)findViewById(2131758517);
      for (int i = 0; i < this.d.k().size(); i++) {
        fti fti = this.d.k().get(i);
        View view = LayoutInflater.from((Context)this).inflate(2130969229, null);
        ((TextView)view.findViewById(2131758508)).setText("TOTAL DA CONTA FUNDO: " + fti.a());
        ((TextView)view.findViewById(2131758511)).setText(naj.f(fti.b()));
        ((TextView)view.findViewById(2131758512)).setText(String.format("%.7f", new Object[] { Float.valueOf(Float.parseFloat(fti.c())) }).replaceAll("\\.", ","));
        ((TextView)view.findViewById(2131758513)).setText(naj.f(fti.g()));
        ((TextView)view.findViewById(2131758514)).setText(naj.f(fti.f()));
        ((TextView)view.findViewById(2131758515)).setText(naj.f(fti.e()));
        ((TextView)view.findViewById(2131758516)).setText(naj.f(fti.d()));
        linearLayout.addView(view);
        for (int j = 0; j < fti.i().size(); j++) {
          fth fth = fti.i().get(j);
          View view1 = LayoutInflater.from((Context)this).inflate(2130969228, null);
          ((TextView)view1.findViewById(2131758508)).setText("DATA DA APLICAÇÃO: " + fth.a());
          ((TextView)view1.findViewById(2131758511)).setText(naj.f(fth.b()));
          ((TextView)view1.findViewById(2131758512)).setText(String.format("%.7f", new Object[] { Float.valueOf(Float.parseFloat(fth.c()) / 1.0E7F) }).replaceAll("\\.", ","));
          ((TextView)view1.findViewById(2131758513)).setText(naj.f(fth.e()));
          ((TextView)view1.findViewById(2131758514)).setText(naj.f(fth.d()));
          ((TextView)view1.findViewById(2131758515)).setText(naj.f(fth.g()));
          ((TextView)view1.findViewById(2131758516)).setText(naj.f(fth.f()));
          linearLayout.addView(view1);
        } 
      } 
    } catch (Exception exception) {}
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969227);
    Intent intent = getIntent();
    this.f = intent.getStringExtra("agencia");
    this.g = intent.getStringExtra("conta");
    this.w = intent.getStringExtra("codigo");
    String str1 = intent.getStringExtra("nombre");
    String str2 = intent.getStringExtra("fecha");
    this.c = (Activity)this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298394));
    TextView textView1 = (TextView)findViewById(2131758506);
    TextView textView2 = (TextView)findViewById(2131758507);
    textView1.setText(naq.c(this.f, this.g));
    textView2.setText(str2);
    ((TextView)findViewById(2131758508)).setText("TOTAL FUNDO: " + str1);
    this.e = new fip(this, null);
    this.e.execute((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\InvestimentosFundoDetalleActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */