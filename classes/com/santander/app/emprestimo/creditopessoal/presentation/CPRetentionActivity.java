package com.santander.app.emprestimo.creditopessoal.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.santander.app.seguros.ui.widgets.CircleChartView;
import grs;
import hnw;
import hqm;
import hqn;
import hqo;
import hrp;
import hrq;
import mxn;

public class CPRetentionActivity extends grs implements hqo {
  private View a;
  
  private CircleChartView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private RecyclerView f;
  
  private Dialog g;
  
  private hrp w;
  
  private hnw x;
  
  private View.OnClickListener y = (View.OnClickListener)new hqm(this);
  
  private View.OnClickListener z = (View.OnClickListener)new hqn(this);
  
  public void a() {
    this.a.setVisibility(0);
  }
  
  public void a(int paramInt) {
    this.b.setProgress(paramInt);
    this.c.setText(String.format("%s%%", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public void a(String paramString1, String paramString2) {
    this.d.setText(paramString1);
    this.e.setText(paramString2);
  }
  
  public void a(String paramString, boolean paramBoolean1, boolean paramBoolean2) {
    this.x.a(paramString, paramBoolean1, paramBoolean2);
  }
  
  public void b() {
    this.a.setVisibility(8);
  }
  
  public void c() {
    if (this.g == null)
      this.g = mxn.b((Activity)this); 
  }
  
  public void d() {
    if (this.g != null) {
      this.g.dismiss();
      this.g = null;
    } 
  }
  
  public void e() {
    startActivity(new Intent((Context)this, CPContratacaoActivity.class));
    finish();
  }
  
  public void f() {
    startActivity(new Intent((Context)this, ConsignadoRefinActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968651);
    c(2131297051);
    this.a = findViewById(2131755225);
    this.b = (CircleChartView)findViewById(2131755563);
    this.c = (TextView)findViewById(2131755564);
    this.d = (TextView)findViewById(2131755565);
    this.e = (TextView)findViewById(2131755566);
    this.f = (RecyclerView)findViewById(2131755567);
    this.f.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.f.setHasFixedSize(true);
    this.f.setNestedScrollingEnabled(false);
    this.x = new hnw();
    this.f.setAdapter((RecyclerView.Adapter)this.x);
    findViewById(2131755568).setOnClickListener(this.y);
    findViewById(2131755569).setOnClickListener(this.z);
    this.w = (hrp)new hrq(this);
    this.w.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.w.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\CPRetentionActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */